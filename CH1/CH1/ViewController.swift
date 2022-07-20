//
//  ViewController.swift
//  CH1
//
//  Created by 이윤학 on 2022/06/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var uiTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func sayHello(_ sender: Any) {
        self.uiTitle.text = "Hello World!"
    }
    

}


