//
//  MenuView.swift
//  CMWorkshop
//
//  Created by Codemobiles Golf on 20/7/2563 BE.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack {
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
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
