//
//  HistoryCell.swift
//  calculateBMI
//
//  Created by cries on 2019/03/05.
//  Copyright © 2019年 cries. All rights reserved.
//

import Foundation
import UIKit

class HistoryCell:UITableViewCell {
    
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var statureLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    func displayData(day: String, stature: String, weight: String, message: String?) {
        self.dayLabel.text = day + "日"
        self.statureLabel.text = stature + " cm"
        self.weightLabel.text = weight + " kg"
        self.messageLabel.text = message
        
        // BMI計算
        if let stature = Util.stringToDouble(stature),
            let weight = Util.stringToDouble(weight) {

            let bmi = BodyMassIndex(stature: stature, weight: weight)
            if let result = bmi.calculation() {
                self.bmiLabel.text = String(format: "%.2f", result)
            }

        }
    }
}
