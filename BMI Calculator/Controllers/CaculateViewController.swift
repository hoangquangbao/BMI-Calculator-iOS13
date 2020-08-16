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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
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
        
        //[???]Tìm cách đặt hàm tính bmi ở đây#Sau đó đưa giá trị sang ResultViewController thì hay hơn
        //[OK]Hàm "override func prepare(for segue: UIStoryboardSegue, sender: Any?)" ở dưới đã giải quyết đc cho yêu cầu trên
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult" {
            
            /*- Ta đã biết chắc đến đây, chương trình sẽ điều hướng đến ResultViewController. Sẽ dùng biến "destinationVC" để tham chiếu đến các giá trị trong ResultViewController.
             - Nhưng có 1 vấn đề: Khai báo theo kiểu "let destinationVC = segue.destination", đích đến của destinationVC là UIViewController. Bộ điều khiển này quá rộng, ko thể tham chiếu đến các giá trị nhỏ trong ResultViewController.
             - Giải pháp: Dùng "as! as! ResultViewController" để thu hẹp lại bộ điều khiển(DownCasting)(Trong trường hợp này, ta đã chỉ định bộ điều khiển đích cho nó là ResultViewController)
             - Câu lệnh bên dưới nhắm vào được 2 mục đích:
                + Điều hướng "destinationVC" đến phân cảnh thuộc ResultViewContoller
                + Chỉ định bộ điều khiển đích cho "destinationVC" là ResultViewController*/
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = String(format: "%.1f", caculateBMIBrain.resultBMI())
        }
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

