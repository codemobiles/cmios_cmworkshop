//
//  MenuView.swift
//  CMWorkshop
//
//  Created by Codemobiles Golf on 21/7/2563 BE.
//

import SwiftUI

struct MenuList: Identifiable {
    let id = UUID()
    let icon, title: String
    let page: AnyView
    var items: [MenuList]?
    
    static let pageOne = MenuList(icon: "ic_feed", title: "JSON RESTFul", page: AnyView(PageOneView()))
    static let pageTwo = MenuList(icon: "ic_upload", title: "Upload Image", page: AnyView(PageTwoView()))
}

struct MenuView: View {
    var body: some View {
        Form {
            Section(header:
                        Image("ios_training_header")
                        .resizable()
                        .aspectRatio(1.15, contentMode: .fill)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .listRowInsets(EdgeInsets())
            ) {
                HStack {
                    Image("ic_feed")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Text("JSON RestFul")
                }
                HStack {
                    Image("ic_upload")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Text("Upload Image")
                }
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
