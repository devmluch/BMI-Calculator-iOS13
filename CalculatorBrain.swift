//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mateo Luchina on 12/02/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    func getBMIValue () -> String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    func getColor () -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    func getAdvice () -> String{
        return bmi?.advice ?? ""
    }
    mutating func calculateBMI(height: Float, weight: Float)  {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value : bmiValue, advice : "Eat more", color : #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
            print(String(bmiValue) + "more")
        } else if bmiValue < 24.9 {
            print(String(bmiValue) + "fit")
            bmi = BMI(value : bmiValue, advice : "Fit", color : #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))
        }
        else {
            print(String(bmiValue) + "less")
            bmi = BMI(value : bmiValue, advice : "Eat less", color : #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
        
    }

}
