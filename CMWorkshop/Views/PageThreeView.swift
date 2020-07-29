//
//  PageThreeView.swift
//  CMWorkshop
//
//  Created by Codemobiles Golf on 29/7/2563 BE.
//

import SwiftUI

struct PageThreeView: View {
    @State private var selectedSegment: Int = 0
    var body: some View {
        VStack {
            Picker("Type", selection: self.$selectedSegment) {
                Text("WEB").tag(0)
                Text("PDF").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .frame(width: 200, alignment: .center)
        }
        .onChange(of: selectedSegment) { selected in
            if selected == 0 {
                self.openWeb()
            }else {
                self.openPdf()
            }
        }
    }
    
    func openWeb() {
        print("Open Web")
    }
    
    func openPdf() {
        print("Open PDF")
    }
}

struct PageThreeView_Previews: PreviewProvider {
    static var previews: some View {
        PageThreeView()
    }
}
