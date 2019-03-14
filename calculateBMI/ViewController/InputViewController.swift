//
//  InputViewController.swift
//  calculateBMI
//
//  Created by cries on 2019/03/01.
//  Copyright © 2019年 cries. All rights reserved.
//

import Foundation
import UIKit

class InputViewController: UIViewController {
    
    // 身長
    @IBOutlet weak var statureInput: UITextField!
    // 体重
    @IBOutlet weak var weightInput: UITextField!
    // BMI結果ラベル
    @IBOutlet weak var messageLabel1: UILabel!
    // BMI値ラベル
    @IBOutlet weak var valueLabel: UILabel!
    // BMI結果ラベル
    @IBOutlet weak var messageLabel2: UILabel!
    // メモ
    @IBOutlet weak var memoInput: PlaceHolderedTextView!
    
    // ボタン
    @IBOutlet weak var calculation: UIButton!
    @IBOutlet weak var dataSave: UIButton!
    @IBOutlet weak var dataDelete: UIButton!

    // スクロールビュー
    @IBOutlet weak var scrollView: UIScrollView!

    // 現在、編集中のテキストフィールド
    var activeField: UIView?
    // 履歴データ
    let bodyDataHistory = BodyDataHistory()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setBorder()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // 結果のラベルを非表示に
        self.labelHidden(true)

        // キーボードイベントの監視開始
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillBeShown(notification:)),
                                               name: UIResponder.keyboardWillShowNotification,
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillBeHidden(notification:)),
                                               name: UIResponder.keyboardWillHideNotification,
                                               object: nil)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // キーボードイベントの監視解除
        NotificationCenter.default.removeObserver(self,
                                                  name: UIResponder.keyboardWillShowNotification,
                                                  object: nil)
        NotificationCenter.default.removeObserver(self,
                                                  name: UIResponder.keyboardWillShowNotification,
                                                  object: nil)
    }
   
    // MARK: - レイアウト
    // 枠線をつける
    private func setBorder() {
        let width: CGFloat = 0.5
        let corner: CGFloat = 10
        
        Util.setBorder(view: self.calculation, color: UIColor.orange, width: width, corner: corner)
        Util.setBorder(view: self.dataSave, color: UIColor.orange, width: width, corner: corner)
        Util.setBorder(view: self.dataDelete, color: UIColor.lightGray, width: width, corner: corner)
        Util.setBorder(view: self.memoInput, color: UIColor.lightGray, width: width, corner: corner)
    }
    // ラベルの表示 true:表示　false:非表示
    private func labelHidden(_ hidden: Bool) {
        self.messageLabel1.isHidden = hidden
        self.messageLabel2.isHidden = hidden
        self.valueLabel.isHidden = hidden
    }
    // MARK: - 入力チェック
    func validate() -> (stature: Double, weight: Double)? {
        if let statureStr = self.statureInput.text, let weightStr = self.weightInput.text {
            if let stature = Util.stringToDouble(statureStr), let weight = Util.stringToDouble(weightStr) {
                return (stature, weight)
            }
        }
        self.showAlert("身長と体重を半角数字で入力してください")
        return nil
    }
    // アラート
    func showAlert(_ text: String, action: Array<UIAlertAction>? = nil) {
        let alert = UIAlertController(title: "", message: text, preferredStyle: UIAlertController.Style.alert)
    
        if let action = action {
            for item in action {
                alert.addAction(item)
            }
        } else {
            // アクションの指定がなかった場合はOKボタン押下のみ
            let ok = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(ok)
        }
        self.present(alert, animated: true, completion: nil)
    }

    // MARK: - ボタンアクション
    @IBAction func calculation(_ sender: Any) {
        self.keybordClose()
        if let data = self.validate() {
            let bmi = BodyMassIndex(stature: data.stature, weight: data.weight)
            if let result = bmi.calculation() {
                self.valueLabel.text = String(format: "%.2f", result)
                // 結果のラベルを表示
                self.labelHidden(false)
            } else {
                self.showAlert("計算が正しく行われませんでした")
            }
        }
    }
    // 保存する
    @IBAction func dataSave(_ sender: Any) {
        if let data = getTodayData() {
            bodyDataHistory.saveData(data)
            self.showAlert("保存しました")
        }
    }
    // 削除する
    @IBAction func dataDelete(_ sender: Any) {
        // OKボタン
        let okAction = UIAlertAction(title: "削除", style: UIAlertAction.Style.default) {
            (action: UIAlertAction) in
            self.bodyDataHistory.removeData(date: Util.stringDate())
        }
        // キャンセルボタン
        let cancelAction = UIAlertAction(title: "キャンセル", style: UIAlertAction.Style.default, handler: nil)
        
        self.showAlert("今日のデータを削除しますか？", action: [okAction, cancelAction])

    }

    private func getTodayData() -> BodyData? {
        if let _ = self.validate() {
            return BodyData(date: Util.stringDate(),
                            stature: self.statureInput.text ?? "",
                            weight: self.weightInput.text ?? "",
                            message: self.memoInput.text)
        }
        return nil
    }
    // MARK: - キーボード関連
    // キーボードが表示された時に呼ばれる
    @objc func keyboardWillBeShown(notification: NSNotification) {
        if let userInfo = notification.userInfo {
            if let keyboardFrame = (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as AnyObject).cgRectValue,
                let animationDuration = (userInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as AnyObject).doubleValue {
                restoreScrollViewSize()
                
                let convertedKeyboardFrame = scrollView.convert(keyboardFrame, from: nil)
                // 現在選択中のTextFieldの下部Y座標とキーボードの高さから、スクロール量を決定
                if let offsetY = self.getOffsetY(keyboardFrame: convertedKeyboardFrame) {
                    updateScrollViewSize(moveSize: offsetY, duration: animationDuration)
                }
            }
        }
    }
    
    // キーボードが閉じられた時に呼ばれる
    @objc func keyboardWillBeHidden(notification: NSNotification) {
        restoreScrollViewSize()
    }
    
    // moveSize分Y方向にスクロールさせる
    func updateScrollViewSize(moveSize: CGFloat, duration: TimeInterval) {
        UIView.beginAnimations("ResizeForKeyboard", context: nil)
        UIView.setAnimationDuration(duration)
        
        let contentInsets = UIEdgeInsets(top: 0, left: 0, bottom: moveSize, right: 0)
        self.scrollView.contentInset = contentInsets
        self.scrollView.scrollIndicatorInsets = contentInsets
        self.scrollView.contentOffset = CGPoint(x: 0, y: moveSize)
        
        UIView.commitAnimations()
    }
    
    func restoreScrollViewSize() {
        // キーボードが閉じられた時に、スクロールした分を戻す
        self.scrollView.contentInset = UIEdgeInsets.zero
        self.scrollView.scrollIndicatorInsets = UIEdgeInsets.zero
    }
    
    // 現在選択中のTextの下部Y座標とキーボードの高さから、スクロール量を決定する
    func getOffsetY(keyboardFrame: CGRect) -> CGFloat? {
        var offsetY: CGFloat? = nil
        if let activeField = self.activeField {
            let offset = activeField.frame.maxY - keyboardFrame.minY
            
            // マイナス値の場合はnilを返す
            if offset >= 0 {
                offsetY = offset
            }
        }
        
        return offsetY
    }
    
    // キーボードが出ている状態で、キーボード以外をタップしたらキーボードを閉じる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        // 非表示にする。
        self.keybordClose()
    }
    
    func keybordClose() {
        // 非表示にする。
        if let activeField = self.activeField {
            if (activeField.isFirstResponder) {
                activeField.resignFirstResponder()
                self.restoreScrollViewSize()
            }
        }
    }


}

// MARK: - UITextFieldDelegate
extension InputViewController: UITextFieldDelegate {

    // TextFieldが選択された時
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        // 選択されているTextFieldを更新
        self.activeField = textField
        
        return true
    }
    
    // リターンが押された時
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // キーボードを非表示に
        textField.resignFirstResponder()
        // 次のTag番号を持っているテキストボックスがあれば、フォーカスする
        let nextTag = textField.tag + 1
        if let nextTextField = self.view.viewWithTag(nextTag) {
            nextTextField.becomeFirstResponder()
        }
        return true
    }
    
}

// MARK: - UITextViewDelegate
extension InputViewController: UITextViewDelegate {
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        self.activeField = textView
        
        return true
    }
}

// MARK: - スクロールビューのタッチイベントをとるための拡張
extension UIScrollView {
    override open func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.next?.touchesBegan(touches, with: event)
    }
    
    override open func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.next?.touchesMoved(touches, with: event)
    }
    
    override open func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.next?.touchesEnded(touches, with: event)
    }
}
