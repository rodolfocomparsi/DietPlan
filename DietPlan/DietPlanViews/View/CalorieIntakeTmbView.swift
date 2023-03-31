//
//  CalorieIntakeTmbView.swift
//  DietPlan
//
//  Created by Rodolfo Comparsi on 30/03/23.
//

import SwiftUI

struct CalorieIntakeTmbView: View {
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
        .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0,maxHeight: .infinity)
        .background(LinearGradient(colors: [.cyan, .green],
                               startPoint: .top,
                               endPoint: .center)
                               .opacity(0.8))
    }
}

struct CalorieIntakeTmbView_Previews: PreviewProvider {
    static var previews: some View {
        CalorieIntakeTmbView()
    }
}
