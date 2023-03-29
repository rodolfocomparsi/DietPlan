//
//  Tela02.swift
//  DietPlan
//
//  Created by Rodolfo Comparsi on 29/03/23.
//

import SwiftUI

struct Tela01: View {
    
    @StateObject var tmbFunc = TmbFunc()
    
    //-------------------------------------------//
    
    var body: some View {
        
        NavigationView{
            Form{
                Section(header: Text("Enter your information")) {
                    TextField("Weight (kg)", text: tmbFunc.weight)
                        .keyboardType(.decimalPad)
                    TextField("Height (cm)", text: tmbFunc.height)
                        .keyboardType(.decimalPad)
                    TextField("Age (years)", text: tmbFunc.age)
                        .keyboardType(.decimalPad)
                    Picker("Gender", selection: $tmbFunc.gender) {
                        ForEach(tmbFunc.genderOptions, id: \.self) { option in
                            Text(option)
                        }
                    }
                    
                    Picker("Activity Level", selection: tmbFunc.activityLevel) {
                        ForEach(activityLevelOptions, id: \.factor) { option in
                            Text(option.description)
                        }
                    }
                    
                    Picker("Goal", selection: tmbFunc.goal) {
                        ForEach(tmbFunc.goalOptions, id: \.self) { option in
                            Text(option)
                        }
                    }
                }
                Section(header: Text("TMB")) {
                    Text("\(tmbFunc.tmb, specifier: "%.0f") calories per day")
                }
                Section(header: Text("Calorie Intake")) {
                    Text("\(tmbFunc.calorieIntake, specifier:"%.0f") calories per day")
                }
                
            }
            
        }
        
    }
}




struct Tela01_Previews: PreviewProvider {
    static var previews: some View {
        Tela01()
    }
}
