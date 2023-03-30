//
//  GenderView.swift
//  DietPlan
//
//  Created by Rodolfo Comparsi on 30/03/23.
//

import SwiftUI

struct GenderView: View {
    var save = Save()
    
    @State private var isNextPageActive4 = false

    @StateObject var tmbFunc = TmbFunc()
    
    var body: some View {
        
        NavigationStack{
            VStack(spacing: 60){
                Text("Enter your Gender")
                Picker("Gender", selection: $tmbFunc.gender) {
                    ForEach(tmbFunc.genderOptions, id: \.self) { option in
                        Text(option)
                    }
                }
                .pickerStyle(WheelPickerStyle())
                .frame(width: 100)
                
                
                
                NavigationLink(destination: ActivityLevelView(), isActive: $isNextPageActive4, label: {
                    Button(action: {
                        save.gender = String(tmbFunc.gender) ?? ""
                        isNextPageActive4 = true
                    }){
                        NextButton()
                            .background(tmbFunc.gender.isEmpty ? Color.gray : Color.blue)
                            .cornerRadius(8)
                    }
                    .disabled(tmbFunc.gender.isEmpty) // desativa o botão enquanto o campo de texto estiver vazio
                })
            }
            
        }
        

    }
            
}

struct GenderView_Previews: PreviewProvider {
    static var previews: some View {
        GenderView()
    }
}
