//
//  PageTwoView.swift
//  CMWorkshop
//
//  Created by Codemobiles Golf on 21/7/2563 BE.
//

import SwiftUI

struct PageTwoView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Image("upload_image")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geometry.size.width / 1.5, height: geometry.size.width / 1.5)
                    .clipShape(Circle())
                    .padding(.bottom, 35)
                HStack(spacing: 60) {
                    Button(action: {
                        
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
        Image("camera_normal")
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: geometry.size.width / 3.5)
    }
}
