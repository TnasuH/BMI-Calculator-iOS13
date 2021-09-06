//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Tarık Nasuhoğlu on 6.09.2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//
import Foundation

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue =  weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: .blue)
        }else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .green)
        }else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: .red)
        }
    }
    
    func getBmi() -> BMI? {
        return bmi
    }
}
