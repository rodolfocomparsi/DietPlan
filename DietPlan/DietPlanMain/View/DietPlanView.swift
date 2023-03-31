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
       
        VStack{
            TabView(selection: $selectionTabView) {
                
                NameView()
                    .tabItem {
                        Image(systemName: "info.circle.fill")
                        Text("Information")
                    }
                
                Tela02()
                    .tabItem {
                        Image(systemName: "person.circle")
                        Text("Perfil")
                    }
                
                Tela03()
                    .tabItem {
                        Image(systemName: "fork.knife.circle")
                        Text("Foods")
                    }
                
                
                
            }
            
            
        }
        .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0,maxHeight: .infinity)
//        .background(LinearGradient(colors: [.cyan, .green],
//                               startPoint: .top,
//                               endPoint: .center)
//                               .opacity(0.8))
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DietPlanView()
    }
}
