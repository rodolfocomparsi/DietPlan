//
//  Tela01Model.swift
//  DietPlan
//
//  Created by Rodolfo Comparsi on 29/03/23.
//
import Foundation


class TmbFunc: ObservableObject {
    @Published var weight: String = ""
    @Published var height: String = ""
    @Published var age: String = ""
    @Published var gender: String = "Female"
    @Published var activityLevel: Double = 1.2
    @Published var goal: String = "Maintain Weight"
    var genderOptions = ["Male", "Female"]

    var tmb: Double {
        let weightInKilograms = Double(weight) ?? 0
        let heightInCentimeters = Double(height) ?? 0
        let ageInYears = Double(age) ?? 0
        let tmb: Double
        if gender == "Male" {
            tmb = 66 + (13.7 * weightInKilograms) + (5 * heightInCentimeters) - (6.8 * ageInYears)
        } else {
            tmb = 655 + (9.6 * weightInKilograms) + (1.8 * heightInCentimeters) - (4.7 * ageInYears)
        }
        return tmb * activityLevel
    }

    func calorieIntake() -> Double {
        switch goal {
        case "Build Muscle":
            return tmb * 1.2
        case "Lose Weight":
            return tmb * 0.8
        default:
            return tmb
        }
    }
}



    

struct ActivityLevelOption {
    let factor: Double
    let description: String
}

let activityLevelOptions = [
    ActivityLevelOption(factor: 1.0, description: "Sedentary (little or no exercise)"),
    ActivityLevelOption(factor: 1.375, description: "Lightly Active (light exercise/sports 1-3 days/week)"),
    ActivityLevelOption(factor: 1.55, description: "Moderately Active (moderate exercise/sports 3-5 days/week)"),
    ActivityLevelOption(factor: 1.725, description: "Very Active (hard exercise/sports 6-7 days a week)"),
    ActivityLevelOption(factor: 1.9, description: "Extremely Active (very hard exercise/sports & physical job or 2x training)")
]
let goalOptions = ["Build Muscle", "Lose Weight", "Maintain Weight"]



