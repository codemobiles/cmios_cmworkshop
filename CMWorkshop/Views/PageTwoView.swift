//
//  PageTwoView.swift
//  CMWorkshop
//
//  Created by Codemobiles Golf on 21/7/2563 BE.
//

import SwiftUI

struct PageTwoView: View {
    @State private var isShowActionSheet: Bool = false
    @State private var image: Image? = Image("upload_image")
    @State private var data: Data?
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    var body: some View {
        GeometryReader { geometry in
            VStack {
                image?
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geometry.size.width / 1.5, height: geometry.size.width / 1.5)
                    .clipShape(Circle())
                    .padding(.bottom, 35)
                HStack(spacing: 60) {
                    Button(action: {
                        self.isShowActionSheet = true
                    }) {
                        ImageButtonView(image: "camera_normal", geometry: geometry)
                    }
                    
                    Button(action: {
                        
                    }) {
                        ImageButtonView(image: "share_normal", geometry: geometry)
                    }
                }
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
        .actionSheet(isPresented: self.$isShowActionSheet) {
            ActionSheet(title: Text("Please Select"), message: Text("Source of Image"), buttons: [
                .default(Text("Camera"), action: {
                    print("Open Camera")
                }),
                .default(Text("Gallery"), action: {
                    print("Open Gallery")
                }),
                .destructive(Text("Dismiss"))
            ])
        }
    }
}

struct PageTwoView_Previews: PreviewProvider {
    static var previews: some View {
        PageTwoView()
    }
}

struct ImageButtonView: View {
    let image: String
    let geometry: GeometryProxy
    var body: some View {
        Image(image)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: geometry.size.width / 3.5)
    }
}
