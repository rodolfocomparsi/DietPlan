//
//  Tela03.swift
//  DietPlan
//
//  Created by Rodolfo Comparsi on 29/03/23.
//

import SwiftUI

struct Tela03: View {
    var body: some View {
        Text("tela 03!")
            .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0,maxHeight: .infinity)
            .background(LinearGradient(colors: [.cyan, .green],
                                   startPoint: .top,
                                   endPoint: .center)
                                   .opacity(0.8))
    }
}

struct Tela03_Previews: PreviewProvider {
    static var previews: some View {
        Tela03()
    }
}
