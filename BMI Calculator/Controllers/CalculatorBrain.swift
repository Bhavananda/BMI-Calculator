//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Bhavananda Das on 13.06.2022.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI (height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more kitri!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
            print("Your volume of kitri is perfect")}
        else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Your volume of kitri is perfect!", color: #colorLiteral(red: 0.701568644, green: 0.9362745166, blue: 0.5221568871, alpha: 1))
            print("Normal")}
        else {
            bmi = BMI(value: bmiValue, advice: "Eat less kitri!", color:#colorLiteral(red: 0.9598039269, green: 0.4184313738, blue: 0.6431772762, alpha: 1))
        }
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "WOW"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    
}




