//
//  HistoryViewController.swift
//  calculateBMI
//
//  Created by cries on 2019/03/04.
//  Copyright © 2019年 cries. All rights reserved.
//

import Foundation
import UIKit

class HistoryViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    var historyData: Array<BodyDataHistory.HistoryData> = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // データのないセルの罫線は表示なし
        self.tableView.tableFooterView = UIView(frame: .zero)
        // セルの高さを可変に
        self.tableView.estimatedRowHeight = 35
        self.tableView.rowHeight = UITableView.automaticDimension

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // 履歴データ取得
        let bodyDataHistory = BodyDataHistory()
        historyData = bodyDataHistory.getHistoryData()
        // tableView更新
        tableView.reloadData()
    }

}

// MARK: - TableView
extension HistoryViewController: UITableViewDelegate, UITableViewDataSource {
    
    // セクションごとにデータ要素数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return historyData[section].data.count
    }
    
    // セクション数
    func numberOfSections(in tableView: UITableView) -> Int {
        return historyData.count
    }
    
    // セクションヘッダ
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?  {
        let year = historyData[section].yearMonth.prefix(4)
        let month = historyData[section].yearMonth.suffix(2)
        return year + "年" + month + "月"
    }
    
    // セル生成
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! HistoryCell

        let dayStr = Util.getDay(date: historyData[indexPath.section].data[indexPath.row].date)
        let stature = historyData[indexPath.section].data[indexPath.row].stature
        let weight = historyData[indexPath.section].data[indexPath.row].weight
        let message = historyData[indexPath.section].data[indexPath.row].message
        
        cell.displayData(day: dayStr, stature: stature, weight: weight, message: message)
        
        return cell
    }
    
    // セクションヘッダの高さ
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
}
