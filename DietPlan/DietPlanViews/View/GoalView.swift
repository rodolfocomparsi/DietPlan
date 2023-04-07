//
//  GoalView.swift
//  DietPlan
//
//  Created by Rodolfo Comparsi on 30/03/23.
//

import SwiftUI

struct GoalView: View {

    let goalOptions = ["Build Muscle", "Lose Weight", "Maintain Weight"]
    @StateObject var tmbFunc = TmbFunc()
    var title: String

    var body: some View {
        
            VStack(spacing: -75){
                Text("Enter your Goal")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.top, 200)
                
                Picker("Goal", selection: $tmbFunc.goal) {
                    ForEach(goalOptions, id: \.self) { option in
                        Text(option)
                    }
                }
                .pickerStyle(WheelPickerStyle())
                .padding(.top, 80)
                
                NavigationLink(destination: CalorieIntakeTmbView(title: "Calories Intake")) {
                    NextButton()
                        .background(tmbFunc.goal.isEmpty ? Color.gray : Color.blue)
                        .cornerRadius(8)
                }.padding(.top, 30)

            }.modifier(Fundo())
            .navigationTitle("Goal")
                .navigationBarTitleDisplayMode(.inline)

    }
            
}


struct GoalView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            GoalView(title: "Calories Intake")
            
            
        }
    }
}
