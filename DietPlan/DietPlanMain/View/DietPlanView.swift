//
//  ContentView.swift
//  DietPlan
//
//  Created by Rodolfo Comparsi on 29/03/23.
//

import SwiftUI

struct DietPlanView: View {
    
    @State private var selectionTabView = 0
    
    var body: some View {
       
            
            TabView(selection: $selectionTabView) {
                
                WeightView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Information")
                    }
                
                Tela02()
                    .tabItem {
                        Image(systemName: "dumbbell")
                        Text("tela 02")
                    }
                
                Tela03()
                    .tabItem {
                        Image(systemName: "fork.knife.circle")
                        Text("tela 01")
                    }
                
                
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DietPlanView()
    }
}
