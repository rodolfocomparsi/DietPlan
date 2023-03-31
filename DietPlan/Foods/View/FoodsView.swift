//
//  Tela03.swift
//  DietPlan
//
//  Created by Rodolfo Comparsi on 29/03/23.
//

import SwiftUI

struct FoodsView: View {
    
    var food = Foods()
    
    
    var body: some View {
        
        HStack(spacing: 10){
            Image(food.photo)
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70)
            
            VStack{
                Text(food.name)
                    .bold()
                Text("Kcal: \(food.kcal)")
                    .foregroundColor(.gray)
                    .font(.system(size: 15))
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(.gray.opacity(0.5))
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .padding(.leading)
        .padding(.trailing)
    }
}

struct FoodsView_Previews: PreviewProvider {
    static var previews: some View {
        FoodsView()
    }
}
