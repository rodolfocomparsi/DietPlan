//
//  Tela02.swift
//  DietPlan
//
//  Created by Rodolfo Comparsi on 29/03/23.
//

import SwiftUI

struct Tela02: View {
    var body: some View {
        Text("tela 02")
            .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0,maxHeight: .infinity)
            .background(LinearGradient(colors: [.cyan, .green],
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
