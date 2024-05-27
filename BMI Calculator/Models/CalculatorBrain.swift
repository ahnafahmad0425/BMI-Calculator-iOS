//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ahnaf Ahmad on 5/26/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?
    
    mutating func calculateBMI(height : Float, weight : Float){
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more protein!", color: UIColor(red: 0.40784313725490196, green: 0.592156862745098, blue: 0.7333333333333333, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are in good shape!", color: UIColor(red: 0.4, green: 0.8039215686274511, blue: 0.6666666666666666, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less and work out!", color: UIColor(red: 1, green: 0.45098039215686275, blue: 0.45098039215686275, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%0.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "no advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
