//
//  BMIBrain.swift
//  BMI Calculator
//
//  Created by Boboli on 8/8/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct BMIBrain {
    
    var bmi = BMI(height: 1.50, weight: 100, index: 0)
    
    mutating func getHeight(_ userChoice: Float) {
        
        bmi.height = userChoice
    }
    
    mutating func getWeight(_ userChoice: Float) {
        
        bmi.weight = userChoice
    }
    
    mutating func resultBMI() -> Float {
        
        bmi.index = bmi.weight / pow(bmi.height,2)
        return bmi.index
    }
}
