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

    @State private var isNextPageActive6 = false

    
    var body: some View {
        
        NavigationStack{
            VStack(spacing: 60){
                Text("Enter your Goal")
                Picker("Goal", selection: $tmbFunc.goal) {
                    ForEach(goalOptions, id: \.self) { option in
                        Text(option)
                    }
                }
                .pickerStyle(WheelPickerStyle())
                
                
                
                NavigationLink(destination: CalorieIntakeTmbView(), isActive: $isNextPageActive6, label: {
                    Button(action: {
                        isNextPageActive6 = true
                    }){
                        NextButton()
                            .background(tmbFunc.goal.isEmpty ? Color.gray : Color.blue)
                            .cornerRadius(8)
                    }
                    .disabled(tmbFunc.goal.isEmpty) // desativa o botão enquanto o campo de texto estiver vazio
                })
            }
            .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0,maxHeight: .infinity)
            .background(LinearGradient(colors: [.cyan, .green],
                                   startPoint: .top,
                                   endPoint: .center)
                                   .opacity(0.8))
        }
        

    }
            
}


struct GoalView_Previews: PreviewProvider {
    static var previews: some View {
        GoalView()
    }
}
