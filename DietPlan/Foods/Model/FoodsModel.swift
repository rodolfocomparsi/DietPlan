//
//  FoodsStruct.swift
//  DietPlan
//
//  Created by Axel Franco on 31/03/23.
//

import Foundation
import SwiftUI

struct Foods{
    
    @State var name = String()
    @State var photo = String()
    @State var kcal = Int()
    
}



struct FoodStruct: View{
    
    @State var food = [
        Foods(name: "Banana", photo: "banana", kcal: 70),
        Foods(name: "Ameixa", photo: "ameixa", kcal: 70),
        Foods(name: "Kiwi", photo: "kiwi", kcal: 70),
        Foods(name: "Banana", photo: "banana", kcal: 70),
        Foods(name: "Banana", photo: "banana", kcal: 70),
        Foods(name: "Banana", photo: "banana", kcal: 70),
        Foods(name: "Banana", photo: "banana", kcal: 70),
        Foods(name: "Banana", photo: "banana", kcal: 70),
        Foods(name: "Banana", photo: "banana", kcal: 70)
    ]
    
    
    
    var body: some View{
        ForEach(food, id: \.name) { index in
            FoodsView(food: index)
        }
    }
}
