//
//  ViewController.swift
//  SubmitValue
//
//  Created by 이윤학 on 2022/07/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var email: UITextField!
    @IBOutlet var isUpdate: UISwitch!
    @IBOutlet var interval: UIStepper!
    @IBOutlet var isUpdateText: UILabel!
    @IBOutlet var intervalText: UILabel!
    
    @IBAction func onSwitch(_ sender: UISwitch) {
        if (sender.isOn == true) {
            self.isUpdateText.text = "갱신함"
        } else {
            self.isUpdateText.text = "갱신하지 않음"
        }
    }
    
    
    @IBAction func onStepper(_ sender: UIStepper) {
        let value = Int(sender.value)
        self.intervalText.text = "\(value)분 마다"
        
    }
    
    // 세그웨이로 화면전환 및 값 전달
    
    @IBAction func onPerformSegue(_ sender: Any) {
        self.performSegue(withIdentifier: "ManualSubmit", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest = segue.destination
        
        guard let rvc = dest as? ResultViewController else {
            return
        }
        
        rvc.paramEmail = self.email.text!
        rvc.paramUpdate = self.isUpdate.isOn
        rvc.paramInterval = self.interval.value
    }
    
    @IBAction func actionSegue(_ sender: Any) {
        
    }
    // 프레젠테이션 방식으로 화면전환 및 값 전달
    
    @IBAction func onSubmit(_ sender: Any) {
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "RVC") as? ResultViewController else {
            return
        }
        rvc.paramEmail = self.email.text!
        rvc.paramUpdate = self.isUpdate.isOn
        rvc.paramInterval = self.interval.value
        
        self.navigationController?.pushViewController(rvc, animated: true)
    }
}

