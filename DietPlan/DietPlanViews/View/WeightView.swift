//
//  Tela02.swift
//  DietPlan
//
//  Created by Rodolfo Comparsi on 29/03/23.
//

import SwiftUI

struct WeightView: View {
    var save = Save()
    @StateObject var tmbFunc = TmbFunc()
    @State private var isNextPageActive = false
    
    var body: some View {
        NavigationStack{
            VStack(spacing: 60){
                Text("Enter your information")
                
                TextField("Weight (kg)", text: $tmbFunc.weight)
                    .keyboardType(.decimalPad)
                    .frame(width: 100)
                
                
                
                NavigationLink(destination: HeightView(), isActive: $isNextPageActive, label: {
                    Button(action: {
                        save.weight = String(tmbFunc.weight) ?? ""
                        isNextPageActive = true
                    }){
                        NextButton()
                            .background(tmbFunc.weight.isEmpty ? Color.gray : Color.blue)
                            .cornerRadius(8)
                    }
                    .disabled(tmbFunc.weight.isEmpty) // desativa o botão enquanto o campo de texto estiver vazio
                })
            }
            
        }
    }
}



struct Tela01_Previews: PreviewProvider {
    static var previews: some View {
        WeightView()
    }
}
