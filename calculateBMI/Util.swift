//
//  Util.swift
//  calculateBMI
//
//  Created by cries on 2019/03/01.
//  Copyright © 2019年 cries. All rights reserved.
//

import Foundation
import UIKit

class Util {
    
    static func stringToDouble(_ str: String) -> Double? {
        if let num = Double(str){
            return num
        }
        return nil
    }
    
    /// ビューに枠線と角丸をつける
    static func setBorder(view: UIView, color: UIColor, width: CGFloat, corner: CGFloat? = nil){
        view.layer.borderWidth = width
        view.layer.borderColor = color.cgColor
        
        if let radius = corner {
            view.layer.cornerRadius = radius
        }
    }
    
    // 今日の日付文字列
    static func stringDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMdd"
        return dateFormatter.string(from: Date())
    }

    // yyyyMMddからdを返す
    static func getDay(date: String) -> String {
        let day = date.suffix(2)
        if let d = Int(day) {
            return String(d)
        }
        return String(day)
    }
}
