//
//  NameView.swift
//  DietPlan
//
//  Created by Axel Franco on 31/03/23.
//

import Foundation
import SwiftUI

struct NameView: View {
    @StateObject var tmbFunc = TmbFunc()
    var title: String
    
    var body: some View {
    
            VStack(spacing: 60){
                    
                Text("Enter your Name")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.top, 200)
                    
                    TextField("Name:", text: $tmbFunc.name)
                    .frame(width: 100)
                    .padding(.top, 30)
                    
                    
                
                NavigationLink(destination: WeightView(title: "Wight")) {
                    NextButton()
                        .background(tmbFunc.name.isEmpty ? Color.gray : Color.blue)
                        .cornerRadius(8)
                        .padding(.bottom, 00)
                }
    
            }.modifier(Fundo())
             .navigationTitle("Name")
             .navigationBarTitleDisplayMode(.inline)
        
    }
}



struct NameView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            NameView(title: "Name")
        }
    }
}
