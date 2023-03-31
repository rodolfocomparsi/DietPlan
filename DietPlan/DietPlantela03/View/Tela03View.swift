//
//  Tela03.swift
//  DietPlan
//
//  Created by Axel Franco on 31/03/23.
//

import Foundation
import SwiftUI

struct Tela03: View {
    
    var body: some View {
        
        ScrollView(.vertical){
            FoodStruct()
        }
        
        
    }
}


struct Tela03_Previews: PreviewProvider {
    static var previews: some View {
        Tela03()
    }
}
