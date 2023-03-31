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
            VStack(spacing: 30){
                VStack{
                    Section(header: Text("TMB")) {
                        Text("\(tmbFunc.tmb, specifier: "%.0f") calories per day")
                    }
                    Section(header: Text("Calorie Intake")) {
                        Text("\(tmbFunc.calorieIntake, specifier:"%.0f") calories per day")
                    }
                    
                }
                
                NavigationLink(destination: Tela02(), isActive: $isNextPageActive7, label: {
                    Button {
                        isNextPageActive7 = true
                    } label: {
                        Text("Ok")
                    }
                    .buttonStyle(.borderedProminent)
                })
                    

                
                
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
