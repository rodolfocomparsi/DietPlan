//
//  HeightView.swift
//  DietPlan
//
//  Created by Rodolfo Comparsi on 30/03/23.
//

import SwiftUI

struct HeightView: View {

    @StateObject var tmbFunc = TmbFunc()
    var title: String

    var body: some View {
            VStack(spacing: 63){
                Text("Enter your Height")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.top, 200)
                
                TextField("Height (cm)", text: $tmbFunc.height)
                    .keyboardType(.decimalPad)
                    .frame(width: 100)
                
                NavigationLink(destination: AgeView(title: "Age")) {
                    NextButton()
                        .background(tmbFunc.age.isEmpty ? Color.gray : Color.blue)
                        .cornerRadius(8)
                }.padding()
                
            }.modifier(Fundo())
            .navigationTitle("Height")
            .navigationBarTitleDisplayMode(.inline)

    }
}

struct HeightView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            
            HeightView(title: "Age")
            
        }
    }
}
