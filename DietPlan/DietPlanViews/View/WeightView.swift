//
//  Tela02.swift
//  DietPlan
//
//  Created by Rodolfo Comparsi on 29/03/23.
//

import SwiftUI

struct WeightView: View {
    @StateObject var tmbFunc = TmbFunc()
    var title: String
    
    var body: some View {
   
            VStack(spacing: 65){
                    
                    Text("Enter your Weight")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.top, 200)
                    
                    TextField("Weight(kg)", text: $tmbFunc.weight)
                        .keyboardType(.decimalPad)
                        .frame(width: 100)
                    
                     
                NavigationLink(destination: HeightView(title: "Height")) {
                    NextButton()
                        .background(tmbFunc.height.isEmpty ? Color.gray : Color.blue)
                        .cornerRadius(8)
                }.padding()

                
            }.modifier(Fundo())
            .navigationTitle("Weight")
            .navigationBarTitleDisplayMode(.inline)
    }
}



struct Tela01_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            WeightView(title: "Weight")
            
            
        }
    }
}
