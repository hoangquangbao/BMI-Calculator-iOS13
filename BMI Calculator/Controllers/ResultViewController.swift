//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Boboli on 8/12/20.
//  Copyright © 2020 Boboli. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var resultBMIBrain = BMIBrain()
    var bmiValue: String?
    
    @IBOutlet weak var bmiLable: UILabel!
    @IBOutlet weak var adviceLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLable.text = bmiValue
    }
    
    @IBAction func recaculatePressed(_ sender: UIButton) {
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
