//
//  AgeView.swift
//  DietPlan
//
//  Created by Rodolfo Comparsi on 30/03/23.
//

import SwiftUI

struct AgeView: View {

    @StateObject var tmbFunc = TmbFunc()
    var title: String

    var body: some View {
            VStack(spacing: 62){
                Text("Enter your Age")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.top, 200)
                
                TextField("Age (years)", text: $tmbFunc.age)
                    .keyboardType(.decimalPad)
                    .frame(width: 100)
                
                
                NavigationLink(destination: GenderView(title: "Gender")) {
                    NextButton()
                        .background(tmbFunc.gender.isEmpty ? Color.gray : Color.blue)
                        .cornerRadius(8)
                }
                .padding()

            }.modifier(Fundo())
            .navigationTitle("Age")
            .navigationBarTitleDisplayMode(.inline)

    }
}


struct AgeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            AgeView(title: "Gender")
            
            
        }
    }
}
