//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Tarık Nasuhoğlu on 6.09.2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultBackgroundUI: UIImageView!
    @IBOutlet weak var resultLblUI: UILabel!
    @IBOutlet weak var adviceLblUI: UILabel!
    
    var bmi: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let bmiObj = bmi {
            resultBackgroundUI.backgroundColor = bmiObj.color
            resultLblUI.text = String(format: "%.1f",bmiObj.value)
            adviceLblUI.text = bmiObj.advice
        }
    }
    
    @IBAction func reCalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
