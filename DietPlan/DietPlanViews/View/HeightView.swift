//
//  HeightView.swift
//  DietPlan
//
//  Created by Rodolfo Comparsi on 30/03/23.
//

import SwiftUI

struct HeightView: View {
    var save = Save()

    @State private var isNextPageActive2 = false

    @StateObject var tmbFunc = TmbFunc()
    
    var body: some View {
        NavigationStack{
            VStack(spacing: 60){
                Text("Enter your information")
                
                TextField("Height (cm)", text: $tmbFunc.height)
                    .keyboardType(.decimalPad)
                    .frame(width: 100)
                
                
                
                NavigationLink(destination: AgeView(), isActive: $isNextPageActive2, label: {
                    Button(action: {
                        save.height = String(tmbFunc.height) ?? ""
                        isNextPageActive2 = true
                    }){
                        NextButton()
                            .background(tmbFunc.height.isEmpty ? Color.gray : Color.blue)
                            .cornerRadius(8)
                    }
                    .disabled(tmbFunc.height.isEmpty) // desativa o botão enquanto o campo de texto estiver vazio
                })
            }
            
        }
        
    }
}

struct HeightView_Previews: PreviewProvider {
    static var previews: some View {
        HeightView()
    }
}
