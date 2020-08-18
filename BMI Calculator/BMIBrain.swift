//
//  BMIBrain.swift
//  BMI Calculator
//
//  Created by Boboli on 8/8/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct BMIBrain {
    
    var bmi = BMI(height: 1.50, weight: 100, index: 0, advice: ["[Gầy độ 3] Bạn gầy quá đi à.", "[Gầy độ 2] Gầy vậy ai yêu chời!", "[Gầy độ 1] Bạn nên ăn nhiều hơn.", "Tuyệt! Bạn có chỉ số BMI bình thường", "Chời ơi! bạn thừa cân rồi", "[Béo phì độ 1] Béo mặc đồ xấu lắm á ngen.", "[Béo phì độ 2] Ăn ít lại bạn ơi!", "[Béo phì độ 3] Bạn là đứa ham ăn"])
    
    mutating func getHeight(_ userChoice: Float) {
        
        bmi.height = userChoice
    }
    
    mutating func getWeight(_ userChoice: Float) {
        
        bmi.weight = userChoice
    }
    
    mutating func getResult() -> Float {
        
        if (bmi.height != 0 && bmi.weight != 0) {
            bmi.index = bmi.weight / pow(bmi.height,2)
            return bmi.index
        } else {
            return 0
        }
    }
    
    func getAdvice() -> String {
        
        switch bmi.index {
        case ..<16: return bmi.advice[0]
        case ..<17: return bmi.advice[1]
        case ..<18.5: return bmi.advice[2]
        case ..<25: return bmi.advice[3]
        case ..<30: return bmi.advice[4]
        case ..<35: return bmi.advice[5]
        case ..<40: return bmi.advice[6]
        default:
            return bmi.advice[7]
        }
    }
    
//    func getColor() -> String {
//        
//        switch bmi.index {
//        case ..<16: return "red"
//        case ..<17: return "pink"
//        case ..<18.5: return "orange"
//        case ..<25: return "green"
//        case ..<30: return "indigo"
//        case ..<35: return "orange"
//        case ..<40: return "pink"
//        default:
//            return "red"
//        }
//    }
}
