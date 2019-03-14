//
//  BodyDataHistory.swift
//  calculateBMI
//
//  Created by cries on 2019/03/04.
//  Copyright © 2019年 cries. All rights reserved.
//

import Foundation

class BodyDataHistory {

    // UserDefaults のインスタンス
    private let userDefaults = UserDefaults.standard
    // キー
    private let DATA_KEY = "bodydata"
    
    private var dataList: Array<BodyData>?
    
    //イニシャライザ
    init(){
        self.dataList = self.getData()
    }
    
    // データの登録
    func saveData(_ data: BodyData) {
        // 既に存在する日付があれば上書きする
        if let index = dateIndex(date: data.date) {
            // 削除
            remove(index: index)
        }
        dataList?.append(data)
        if var list = dataList {
            // 並び替え
            list = list.sorted(by: { (a, b) -> Bool in
                return a.date > b.date
            })
            setData(list)
        }
    }
    
    // 指定の日付のデータを削除する
    func removeData(date: String) {
        if let index = dateIndex(date: date) {
            // 削除
            remove(index: index)
            if let list = self.dataList, list.count > 1 {
                // UserDefaults登録
                self.setData(list)
            } else {
                userDefaults.removeObject(forKey: DATA_KEY)
            }
        }
    }
    
    // 指定の日付のインデックスを返す
    private func dateIndex(date: String) -> Int?  {
        if let list = self.dataList {
            for (index, element) in list.enumerated() {
                if date == element.date {
                    return index
                }
            }
        }
        return nil
    }

    private func remove(index: Int) {
        // 配列から削除
        if let list = self.dataList, list.count > 0 {
            self.dataList!.remove(at: index)
        }
    }
    
    // MARK: - UserDefaults

    // UserDefaultsに保存
    private func setData(_ data: Array<BodyData>) {
        let archivedData = try? NSKeyedArchiver.archivedData(withRootObject: data, requiringSecureCoding: false)

        userDefaults.set(archivedData, forKey: DATA_KEY)
        userDefaults.synchronize()

    }
    
    // userDefaultsに保存された値の取得
    private func getData() -> Array<BodyData> {
        
        if let loadedData = userDefaults.data(forKey: DATA_KEY) {
            let unArchiveData = try? NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(loadedData)
            if let bodyDataHist = unArchiveData as? [BodyData] {
                return bodyDataHist
            }            
        }
        return []
    }
    
    // MARK: - 履歴テーブル表示用

    func getHistoryData() -> Array<HistoryData> {
        userDefaults.synchronize()

        // 履歴テーブル表示用データ
        var historyData: Array<HistoryData> = []
        if let list = self.dataList {
            var bodyDataList: Array<BodyData> = []
            var yearMonth = ""
            for (index, element) in list.enumerated() {
                yearMonth = String(element.date.prefix(6))
                bodyDataList.append(element)
                if list.count <= index + 1 || (list.count > index && list[index + 1].date.prefix(6) != yearMonth){
                    historyData.append(HistoryData(yearMonth: yearMonth, data: bodyDataList))
                    bodyDataList = []
                }
            }
        }
        return historyData
    }
    
    // 履歴テーブル表示用の構造体
    struct HistoryData {
        var yearMonth: String
        var data: Array<BodyData>
        
        init(yearMonth: String, data: Array<BodyData>) {
            self.yearMonth = yearMonth
            self.data = data
        }
    }

}
