//
//  BodyData.swift
//  calculateBMI
//
//  Created by cries on 2019/03/04.
//  Copyright © 2019年 cries. All rights reserved.
//

import Foundation

class BodyData: NSObject, NSCoding {
    
    // 測定日
    var date: String
    // 身長
    var stature: String
    // 体重
    var weight: String
    // メモ
    var message: String?
    
    //イニシャライザ
    init(date: String, stature: String, weight: String, message: String?){
        self.date = date
        self.stature = stature
        self.weight = weight
        if let str = message {
            self.message = str
        }
    }

    func encode(with aCoder: NSCoder) {
        aCoder.encode(date, forKey: "date")
        aCoder.encode(stature, forKey: "stature")
        aCoder.encode(weight, forKey: "weight")
        aCoder.encode(message, forKey: "message")
    }
    
    required init?(coder aDecoder: NSCoder) {
        date = aDecoder.decodeObject(forKey: "date") as! String
        stature = aDecoder.decodeObject(forKey: "stature") as! String
        weight = aDecoder.decodeObject(forKey: "weight") as! String
        message = aDecoder.decodeObject(forKey: "message") as! String?
        
    }
}
