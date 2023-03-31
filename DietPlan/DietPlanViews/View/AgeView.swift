//
//  AgeView.swift
//  DietPlan
//
//  Created by Rodolfo Comparsi on 30/03/23.
//

import SwiftUI

struct AgeView: View {
    @State private var isNextPageActive3 = false

    @StateObject var tmbFunc = TmbFunc()
    
    var body: some View {
        NavigationStack{
            VStack(spacing: 60){
                Text("Enter your information")
                
                TextField("Age (years)", text: $tmbFunc.age)
                    .keyboardType(.decimalPad)
                    .frame(width: 100)
                
                
                
                NavigationLink(destination: GenderView(), isActive: $isNextPageActive3, label: {
                    Button(action: {
                        tmbFunc.age = String(tmbFunc.age) 
                        isNextPageActive3 = true
                    }){
                        NextButton()
                            .background(tmbFunc.age.isEmpty ? Color.gray : Color.blue)
                            .cornerRadius(8)
                    }
                    .disabled(tmbFunc.age.isEmpty) // desativa o botão enquanto o campo de texto estiver vazio
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


struct AgeView_Previews: PreviewProvider {
    static var previews: some View {
        AgeView()
    }
}
