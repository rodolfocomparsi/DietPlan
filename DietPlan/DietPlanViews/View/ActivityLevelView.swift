//
//  ActivityLevelView.swift
//  DietPlan
//
//  Created by Rodolfo Comparsi on 30/03/23.
//

import SwiftUI

struct ActivityLevelView: View {
    var save = Save()

    @State private var isNextPageActive5 = false

    @StateObject var tmbFunc = TmbFunc()
    
    var body: some View {
        
        NavigationStack{
            VStack(spacing: 60){
                Text("Enter your Activity Level")
                Picker("Activity Level", selection: $tmbFunc.activityLevel) {
                    ForEach(activityLevelOptions, id: \.factor) { option in
                        Text(option.description)
                    }
                }
                .pickerStyle(WheelPickerStyle())
                
                
                
                NavigationLink(destination: GoalView(), isActive: $isNextPageActive5, label: {
                    Button(action: {
                        save.goal = String(tmbFunc.goal) ?? ""

                        isNextPageActive5 = true
                    }){
                        NextButton()
                            .background(tmbFunc.activityLevel.isZero ? Color.gray : Color.blue)
                            .cornerRadius(8)
                    }
                    .disabled(tmbFunc.activityLevel.isZero) // desativa o botão enquanto o campo de texto estiver vazio
                })
            }
            
        }
        

    }
            
}
    


struct ActivityLevelView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityLevelView()
    }
}
