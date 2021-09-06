//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLblUI: UILabel!
    @IBOutlet weak var weightLblUI: UILabel!
    
    @IBOutlet weak var heightSliderUI: UISlider!
    @IBOutlet weak var weightSliderUI: UISlider!
    
    var calculatorBrain :CalculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        weightSliderUI.value = 100
        heightSliderUI.value = 1.50
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func heightChanged(_ sender: UISlider) {
        heightLblUI.text = String(format: "%.2fm", sender.value)
    }
    
    @IBAction func weightChanged(_ sender: UISlider) {
        weightLblUI.text = "\(Int(sender.value))Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculatorBrain.calculateBMI(height: heightSliderUI.value, weight: weightSliderUI.value)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmi = calculatorBrain.getBmi()
        }
    }
}

