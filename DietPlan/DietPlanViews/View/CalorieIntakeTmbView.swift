//
//  CalorieIntakeTmbView.swift
//  DietPlan
//
//  Created by Rodolfo Comparsi on 30/03/23.
//

import SwiftUI

struct CalorieIntakeTmbView: View {
    @StateObject var tmbFunc = TmbFunc()
    
    @State private var isNextPageActive7 = false
    
    
    var body: some View {
        
        
        NavigationStack{
            VStack(spacing: 50){
                VStack(spacing: 10){
                    Section(header: Text("Basal Metabolic Rate")
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
                
               
                    

                
                
            }
            .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0,maxHeight: .infinity)
            .background(LinearGradient(colors: [.orange.opacity(0.6), .green.opacity(0.7)],
                                       startPoint: .top,
                                       endPoint: .center)
                                       .opacity(0.8))
            
         

            
            
            
        }
            
            
            
         
    }
}

struct CalorieIntakeTmbView_Previews: PreviewProvider {
    static var previews: some View {
        CalorieIntakeTmbView()
    }
}
