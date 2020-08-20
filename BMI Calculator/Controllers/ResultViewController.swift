//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Boboli on 08/08/2020.
//  Copyright © 2020 Boboli. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    //var resultBMIBrain = BMIBrain()
    var bmiValue: Float?
    var bmiAdvice: String?
    //var bmiColor: String?
    
    @IBOutlet weak var bmiLable: UILabel!
    @IBOutlet weak var adviceLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLable.text = String(format: "%.1f", bmiValue!)
        adviceLable.text = bmiAdvice
        
        switch bmiValue! {
        case ..<16: view.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        case ..<17: view.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        case ..<18.5: view.backgroundColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
        case ..<25: view.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        case ..<30: view.backgroundColor = #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1)
        case ..<35: view.backgroundColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
        case ..<40: view.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        default:
            view.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        }
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
