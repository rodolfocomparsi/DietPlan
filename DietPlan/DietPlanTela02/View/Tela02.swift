//
//  Tela02.swift
//  DietPlan
//
//  Created by Rodolfo Comparsi on 29/03/23.
//

import SwiftUI

struct Tela02: View {
    var body: some View {
        
        
        
        VStack{
            
            Text("PERFIL")
                .bold()
                .fontDesign(.monospaced)
                .font(.system(size: 40))
                .foregroundColor(.white)
            HStack{
                Image("axelGolden")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 100, height: 100)
                VStack(alignment: .leading, spacing: 5){
                    Text("Axel Franco")
                        .bold()
                    
                    Text("Age: \(TmbFunc().age)")
                        .foregroundColor(.gray)
                    
                    Text("Weight: \(TmbFunc().weight)")
                        .foregroundColor(.gray)
                    
                    Text("Height: \(TmbFunc().height)")
                        .foregroundColor(.gray)
                    
                    Text("Gender: \(TmbFunc().gender)")
                        .foregroundColor(.gray)
                  
                    Text("Goal: \(TmbFunc().goal)")
                        .foregroundColor(.gray)
                    
                    Text("Kcal: \(TmbFunc().calorieIntake, specifier:"%.0f")")
                        .foregroundColor(.gray)
                }
                
            }
            
            
            
            
            
            
        }
        .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0,maxHeight: .infinity, alignment: .top)
        .background(LinearGradient(colors: [.orange.opacity(0.6), .green.opacity(0.7)],
                               startPoint: .top,
                               endPoint: .center)
                               .opacity(0.8))
        
            
    }
}

struct Tela02_Previews: PreviewProvider {
    static var previews: some View {
        Tela02()
    }
}
