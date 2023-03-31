//
//  Tela03.swift
//  DietPlan
//
//  Created by Rodolfo Comparsi on 29/03/23.
//

import SwiftUI

struct FoodsView: View {
    
    @State var food = Foods()
    
    @State var unitFood = Int()
    
   @State var foodKcal = 0
    var body: some View {
        
        HStack(spacing: 10){
            Image(food.photo)
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70)
            
            VStack{
                
                HStack{
                    
                    VStack(alignment: .leading){
                        Text(food.name)
                            .bold()
                        
                        Text("Kcal: \(foodKcal)")
                            .foregroundColor(.gray)
                            .font(.system(size: 15))
                    }
                    
                    
                    Spacer()
                    
                    Button {
                        foodKcal -= food.kcal
                        
                        unitFood -= 1

                        if foodKcal < 70 {
                            foodKcal = 0
                        }
                        
                        if unitFood < 1 {
                            unitFood = 0
                        }
                                            } label: {
                        Text("-")
                        
                        
                            
                    }
                    .buttonStyle(.bordered)
                    
                    
                    Text("\(unitFood)")
                        
                    
                    Button {
                        foodKcal += food.kcal
                        
                        unitFood += 1
                        
                    } label: {
                        Text("+")
                    }
                    .buttonStyle(.bordered)

                }
              
                
            }
            
            
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .padding(.leading)
        .padding(.trailing)
    }
}

//struct FoodsView_Previews: PreviewProvider {
//    static var previews: some View {
//        FoodsView()
//    }
//}
