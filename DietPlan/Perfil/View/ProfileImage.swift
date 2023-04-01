//
//  ProfileImage.swift
//  DietPlan
//
//  Created by Rodolfo Comparsi on 01/04/23.
//

import SwiftUI


struct ProfileImage: View {
    @State private var selectedImage: Image?
    @State private var isShowingImagePicker = false

    var body: some View {
        VStack {
            if selectedImage != nil {
                selectedImage!
                    .resizable()
                    .scaledToFit()
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
    }
}

struct ImagePicker: UIViewControllerRepresentable {
    @Binding var image: Image?
       @Environment(\.presentationMode) var presentationMode

    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        let parent: ImagePicker

        init(_ parent: ImagePicker) {
            self.parent = parent
        }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let uiImage = info[.originalImage] as? UIImage {
                parent.image = Image(uiImage: uiImage)
            }
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
}


struct ProfileImage_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImage()
    }
}
