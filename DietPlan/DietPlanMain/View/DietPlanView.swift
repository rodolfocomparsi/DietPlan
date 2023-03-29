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
                    Tela01()
                        .tabItem {
                            Image(systemName: "person")
                            Text("Tela 1")
                        }

                    Tela02()
                        .tabItem {
                            Image(systemName: "dumbbell")
                            Text("Tela 2")
                        }

                    Tela03()
                        .tabItem {
                            Image(systemName: "fork.knife.circle")
                            Text("Tela 3")
                        }
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DietPlanView()
    }
}
