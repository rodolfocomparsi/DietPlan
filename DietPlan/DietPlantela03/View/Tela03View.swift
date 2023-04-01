//
//  Tela03.swift
//  DietPlan
//
//  Created by Axel Franco on 31/03/23.
//

import Foundation
import SwiftUI

struct FoodsList: View {
    
    var body: some View {
        
        ScrollView(.vertical){
            FoodStruct()
        }
        
        
    }
}


struct FoodsList_Previews: PreviewProvider {
    static var previews: some View {
        FoodsList()
    }
}
