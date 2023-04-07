//
//  CalorieIntakeTmbView.swift
//  DietPlan
//
//  Created by Rodolfo Comparsi on 30/03/23.
//

import SwiftUI

struct CalorieIntakeTmbView: View {
    @StateObject var tmbFunc = TmbFunc()
    var title: String

   
    var body: some View {
            VStack(spacing: 40){
                VStack(spacing: 10){
                    Section(header: Text("Basal Metabolic Rate")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.top, 180)
                        .font(.title2)) {
                            Text("Daily calorie consumption based on your physical characteristics.")
                                .font(.subheadline)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.gray)
                                .frame(width: 300)
                        

                            Text("\(tmbFunc.tmb, specifier: "%.0f") Calories per Day")
                        }
                }
                
                
                VStack(spacing: 10){
                    Section(header: Text("Calories Intake to go your Goal")
                        .font(.title3)) {
                            Text("Daily caloric consumption taking into account your goal which is \(tmbFunc.goal).")
                                .font(.subheadline)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.gray)
                                .frame(width: 300)
                            
                        Text("\(tmbFunc.calorieIntake, specifier:"%.0f") Calories per Day")
                    }
                    
                }
                
                NavigationLink(destination: DietPlanView()) {
                    Text("OK")
                        .bold()
                        .frame(width: 80, height: 40)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        
                }

            }.modifier(Fundo())
            .navigationTitle("Calories Intake")
                .navigationBarTitleDisplayMode(.inline)
              
    }
}

struct CalorieIntakeTmbView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            CalorieIntakeTmbView(title: "Calories Intake")
            
            
        }
    }
}
