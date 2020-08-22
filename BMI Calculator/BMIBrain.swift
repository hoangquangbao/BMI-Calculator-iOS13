//
//  BMIBrain.swift
//  BMI Calculator
//
//  Created by Boboli on 08/08/2020.
//  Copyright © 2020 Boboli. All rights reserved.
//

import UIKit

struct BMIBrain {
    //var bmi = BMI(height: 1.50, weight: 100, index: 0, advice: ["[Gầy độ 3] Bạn gầy quá đi à.", "[Gầy độ 2] Gầy vậy ai yêu chời!", "[Gầy độ 1] Bạn nên ăn nhiều hơn.", "Tuyệt! Bạn có chỉ số BMI bình thường", "Chời ơi! Bạn thừa cân rồi", "[Béo phì độ 1] Béo mặc đồ xấu lắm á ngen.", "[Béo phì độ 2] Ăn ít lại bạn ơi!", "[Béo phì độ 3] Bạn là đứa ham ăn"])
    //Thay vì khởi tạo trước như trên, ta có thể khởi tạo khi đã tính đc giá trị BMI thì hay hơn
    var bmiBrain: BMI?
    
    mutating func caculatorBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height,2)
        
        if height == 0 || weight == 0 {
            bmiBrain = BMI(index: 0.0, advice: "Don't have any advices", color: #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1))
        } else if bmiValue < 18.5 {
            bmiBrain = BMI(index: bmiValue, advice: "Under Weight", color: #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1))
        } else if bmiValue < 24.9 {
            bmiBrain = BMI(index: bmiValue, advice: "Normal", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        } else {
            bmiBrain = BMI(index: bmiValue, advice: "Over Weight", color: #colorLiteral(red: 0.6148123741, green: 0.1017967239, blue: 0.1002308354, alpha: 1))
        }
    }
    
    //Nếu bmi != nil thì truy cập tiếp vào value. Nếu value != nil thì return value, ngc lại return DefaultValue
    func getBMIValue() -> Float {
        return bmiBrain?.index ?? 0.0
    }
    
    func getAdvice() -> String {
        return bmiBrain?.advice ?? "Don't advice"
    }
    
    func getColor() -> UIColor {
        return bmiBrain?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
