//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Boboli on 09/08/2020.
//  Copyright © 2020 Boboli. All rights reserved.
//

import UIKit

class CaculateViewController: UIViewController {
    
    var caculateBMIBrain = BMIBrain()
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var heightLable: UILabel!
    @IBOutlet weak var weightLable: UILabel!
    
    @IBAction func heightSlider(_ sender: UISlider) {
        
        let userChoice = sender.value
        caculateBMIBrain.getHeight(userChoice)
        heightLable.text = String(format: "%.2f", userChoice) + "m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        
        let userChoice = sender.value
        caculateBMIBrain.getWeight(userChoice)
        weightLable.text = String(format: "%.1f", userChoice) + "Kg"
    }
    
    @IBAction func caculatorPressed(_ sender: UIButton) {
        
        //[???]Tìm cách đặt hàm tính bmi ở đây#Sau đó đưa giá trị sang ResultViewCOntroller thì hay hơn
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

