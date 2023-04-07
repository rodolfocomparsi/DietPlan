//
//  ActivityLevelView.swift
//  DietPlan
//
//  Created by Rodolfo Comparsi on 30/03/23.
//

import SwiftUI

struct ActivityLevelView: View {

    @StateObject var tmbFunc = TmbFunc()
    var title: String

    var body: some View {
        
            VStack(spacing: -80){
                Text("Enter your Activity Level")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.top, 200)
                
                Picker("Activity Level", selection: $tmbFunc.activityLevel) {
                    ForEach(activityLevelOptions, id: \.factor) { option in
                        Text(option.description)
                    }
                }
                .pickerStyle(WheelPickerStyle())
                .padding(20)
                
                NavigationLink(destination: GoalView(title: "Goal")) {
                    NextButton()
                        .background(tmbFunc.gender.isEmpty ? Color.gray : Color.blue)
                        .cornerRadius(8)
                }.padding(.top, 70)

            }.modifier(Fundo())
            .navigationTitle("Activity Level")
                .navigationBarTitleDisplayMode(.inline)
        }
}
    


struct ActivityLevelView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            
            ActivityLevelView(title: "Goal")
            
        }
    }
}
