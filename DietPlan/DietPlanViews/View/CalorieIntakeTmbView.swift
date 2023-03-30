//
//  CalorieIntakeTmbView.swift
//  DietPlan
//
//  Created by Rodolfo Comparsi on 30/03/23.
//

import SwiftUI

struct CalorieIntakeTmbView: View {
    var save = Save()
    @StateObject var tmbFunc = TmbFunc()
    
    var body: some View {
        
        VStack{
            Section(header: Text("TMB")) {
                Text("\(tmbFunc.tmb, specifier: "%.0f") calories per day")
            }
            Section(header: Text("Calorie Intake")) {
                Text("\(tmbFunc.calorieIntake, specifier:"%.0f") calories per day")
            }
            
        }
    }
}

struct CalorieIntakeTmbView_Previews: PreviewProvider {
    static var previews: some View {
        CalorieIntakeTmbView()
    }
}
