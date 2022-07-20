//
//  ViewController.swift
//  Scene-ManualSegue
//
//  Created by 이윤학 on 2022/07/12.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func wind(_ sender: Any) {
        self.performSegue(withIdentifier: "ManualWind", sender: self)
    }
    @IBAction func unwindToVC(_ segue: UIStoryboardSegue) {
        
    }
}

