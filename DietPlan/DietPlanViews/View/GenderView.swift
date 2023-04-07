//
//  GenderView.swift
//  DietPlan
//
//  Created by Rodolfo Comparsi on 30/03/23.
//

import SwiftUI

struct GenderView: View {

    @StateObject var tmbFunc = TmbFunc()
    var title: String

    var body: some View {
        
            VStack(spacing: -35){
                Text("Enter your Gender")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.top, 200)
                
                Picker("Gender", selection: $tmbFunc.gender) {
                    ForEach(tmbFunc.genderOptions, id: \.self) { option in
                        Text(option)
                    }
                }
                .pickerStyle(WheelPickerStyle())
                .frame(width: 100)
                
                NavigationLink(destination: ActivityLevelView(title: "Activity Level")) {
                    NextButton()
                        .background(tmbFunc.gender.isEmpty ? Color.gray : Color.blue)
                        .cornerRadius(8)
                }.padding()

            }.modifier(Fundo())
            .navigationTitle("Gender")
                .navigationBarTitleDisplayMode(.inline)
        }

}

struct GenderView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            GenderView(title: "Activity Level")
            
            
        }
    }
}
