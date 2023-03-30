//
//  AgeView.swift
//  DietPlan
//
//  Created by Rodolfo Comparsi on 30/03/23.
//

import SwiftUI

struct AgeView: View {
    var save = Save()

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
                        save.age = String(tmbFunc.age) ?? ""
                        isNextPageActive3 = true
                    }){
                        NextButton()
                            .background(tmbFunc.age.isEmpty ? Color.gray : Color.blue)
                            .cornerRadius(8)
                    }
                    .disabled(tmbFunc.age.isEmpty) // desativa o botão enquanto o campo de texto estiver vazio
                })
            }
            
        }
        
    }
}


struct AgeView_Previews: PreviewProvider {
    static var previews: some View {
        AgeView()
    }
}
