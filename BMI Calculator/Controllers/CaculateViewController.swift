//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Boboli on 08/08/2020.
//  Copyright © 2020 Boboli. All rights reserved.
//

import UIKit

class CaculateViewController: UIViewController {
    
    var caculate = BMIBrain()
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLable: UILabel!
    @IBOutlet weak var weightLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func height(_ sender: UISlider) {
        heightLable.text = String(format: "%.2f" + "m", sender.value)
    }
    
    @IBAction func weight(_ sender: UISlider) {
        weightLable.text = String(format: "%.1f" + "kg", sender.value)
    }
    
    @IBAction func caculatorPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        caculate.caculatorBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //if segue.identifier == "goToResult" {
        let destinationVC = segue.destination as! ResultViewController
        destinationVC.bmiValue = caculate.getBMIValue()
        destinationVC.bmiAdvice = caculate.getAdvice()
        destinationVC.bmiColor = caculate.getColor()
        //}
    }
}
/*- Ta đã biết chắc đến đây, chương trình sẽ điều hướng đến ResultViewController. Sẽ dùng biến "destinationVC" để tham chiếu đến các giá trị trong ResultViewController.
 - Nhưng có 1 vấn đề: Khai báo theo kiểu "let destinationVC = segue.destination", đích đến của destinationVC là UIViewController. Bộ điều khiển này quá rộng, ko thể tham chiếu đến các giá trị nhỏ trong ResultViewController.
 - Giải pháp: Dùng "as! ResultViewController" để thu hẹp lại bộ điều khiển(DownCasting) (Trong trường hợp này, ta đã chỉ định bộ điều khiển đích cho nó là ResultViewController)
 - Câu lệnh bên dưới nhắm vào được 2 mục đích:
 + Điều hướng "destinationVC" đến phân cảnh thuộc ResultViewContoller
 + Chỉ định bộ điều khiển đích cho "destinationVC" là ResultViewController*/
