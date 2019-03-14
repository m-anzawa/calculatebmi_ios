//
//  BodyMassIndex.swift
//  calculateBMI
//
//  Created by cries on 2019/03/01.
//  Copyright © 2019年 cries. All rights reserved.
//

import Foundation

class BodyMassIndex {
    let stature: Double?
    let weight: Double?
    
    //イニシャライザ
    init(stature: Double, weight: Double){
        self.stature = stature
        self.weight = weight
    }
    
    func calculation() -> Double? {
        var bmi: Double? = nil
        // BMI＝体重(kg) / {身長(m) * 身長(m)}
        if let weight = self.weight, let stature = self.stature {
            let height = (stature / 100) * (stature / 100)
            if height > 0 {
                bmi = weight / height
            }
        }
            
        return bmi
    }
}
