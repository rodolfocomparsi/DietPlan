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
    @State private var isNextPageActive0 = false
    
    var body: some View {
    
        NavigationStack{
            
            VStack(spacing: 60){
                    
                    Text("Enter your Name")
                    
                    TextField("Name:", text: $tmbFunc.name)
                    .frame(width: 100)
                    
                    
                    
                    NavigationLink(destination: WeightView(), isActive: $isNextPageActive0, label: {
                        Button(action: {
                            isNextPageActive0 = true
                        }){
                            NextButton()
                                .background(tmbFunc.name.isEmpty ? Color.gray : Color.blue)
                                .cornerRadius(8)
                        }
                        .disabled(tmbFunc.name.isEmpty) // desativa o botão enquanto o campo de texto estiver vazio
                    })
                
            }.frame(minWidth: 0,maxWidth: .infinity, minHeight: 0,maxHeight: .infinity)
                .background(LinearGradient(colors: [.orange.opacity(0.6), .green.opacity(0.7)],
                                       startPoint: .top,
                                       endPoint: .center)
                                       .opacity(0.8))
            
            
            
        }
        
    }
}



struct NameView_Previews: PreviewProvider {
    static var previews: some View {
        NameView()
    }
}
