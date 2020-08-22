//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Boboli on 08/08/2020.
//  Copyright © 2020 Boboli. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: Float?
    var bmiAdvice: String?
    var bmiColor: UIColor?
    
    @IBOutlet weak var bmiLable: UILabel!
    @IBOutlet weak var adviceLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLable.text = String(format: "%.1f", bmiValue!)
        adviceLable.text = bmiAdvice
        view.backgroundColor = bmiColor
    }
    
    @IBAction func recaculatePressed(_ sender: UIButton) {
        //Để quay lại màn hình trc, ta chỉ cần loại bỏ màn hình hiện tại. Nil nghĩa là ko có j xảy ra sau khi loại bỏ
        self.dismiss(animated: true, completion: nil)
    }
}
