//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Boboli on 8/12/20.
//  Copyright © 2020 Boboli. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    //var resultBMIBrain = BMIBrain()
    var bmiValue: String?
    
    @IBOutlet weak var bmiLable: UILabel!
    @IBOutlet weak var adviceLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLable.text = bmiValue
    }
    
    @IBAction func recaculatePressed(_ sender: UIButton) {
        
        //Để quay lại màn hình trc, ta chỉ cần loại bỏ màn hình hiện tại. Nil nghĩa là kocos j xảy ra sau khi loại bỏ
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
