//
//  Tela02.swift
//  DietPlan
//
//  Created by Rodolfo Comparsi on 29/03/23.
//

import SwiftUI

struct PerfilScreen: View {
    @State private var selectedImage: Image?
    @State private var isShowingImagePicker = false
    @State private var isNextPageActive8 = false
    
    var body: some View {
        
            
            
            VStack{
                
                Text("PERFIL")
                    .bold()
                    .fontDesign(.monospaced)
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                HStack{
                   VStack {
                        if selectedImage != nil {
                            selectedImage!
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .padding(30)
                        } else {
                            Text("Selecione uma imagem")
                        }
                        Button("Escolher imagem") {
                            isShowingImagePicker = true
                        }
                    }
                    .sheet(isPresented: $isShowingImagePicker) {
                        ImagePicker(image: $selectedImage)
                    }
                    
                        
                    VStack(alignment: .leading, spacing: 5){
                        Text("Name: \(TmbFunc().name)")
                            .bold()
                        
                        Text("Age: \(TmbFunc().age)")
                            .foregroundColor(.gray)
                        
                        Text("Weight: \(TmbFunc().weight)")
                            .foregroundColor(.gray)
                        
                        Text("Height: \(TmbFunc().height)")
                            .foregroundColor(.gray)
                        
                        Text("Gender: \(TmbFunc().gender)")
                            .foregroundColor(.gray)
                        
                        Text("Goal: \(TmbFunc().goal)")
                            .foregroundColor(.gray)
                        
                        Text("Kcal: \(TmbFunc().calorieIntake, specifier:"%.0f")")
                            .foregroundColor(.gray)
                    }.padding()
                    
                }
                
              
                
                
                
                
            }
            .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0,maxHeight: .infinity, alignment: .top)
            .background(LinearGradient(colors: [.orange.opacity(0.6), .green.opacity(0.7)],
                                       startPoint: .top,
                                       endPoint: .center)
                .opacity(0.8))
            
            
    }
}

struct PerfilScreen_Previews: PreviewProvider {
    static var previews: some View {
        PerfilScreen()
    }
}
