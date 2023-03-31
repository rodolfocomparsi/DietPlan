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
    @State var kcal = String()
}


struct FoodStruct: View{
    
    var food = [
        Foods(name: "Banana", photo: "banana", kcal: "70"),
        Foods(name: "Banana", photo: "banana", kcal: "70"),
        Foods(name: "Banana", photo: "banana", kcal: "70"),
        Foods(name: "Banana", photo: "banana", kcal: "70"),
        Foods(name: "Banana", photo: "banana", kcal: "70"),
        Foods(name: "Banana", photo: "banana", kcal: "70"),
        Foods(name: "Banana", photo: "banana", kcal: "70"),
        Foods(name: "Banana", photo: "banana", kcal: "70"),
        Foods(name: "Banana", photo: "banana", kcal: "70")
    ]
    
    
    
    var body: some View{
        ForEach(food, id: \.name) { index in
            FoodsView(food: index)
        }
    }
}
