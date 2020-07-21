//
//  PageOneView.swift
//  CMWorkshop
//
//  Created by Codemobiles Golf on 21/7/2563 BE.
//

import SwiftUI
import Alamofire

struct PageOneView: View {
    var body: some View {
        Text("Page One")
            .onAppear {
                self.feedData()
            }
    }
    
    func feedData() {
        let params = ["username": "admin", "password": "password", "type": "foods"]
        let url = "http://codemobiles.com/adhoc/youtubes/index_new.php"
        AF.request(url, method: .post, parameters: params).responseJSON { (response) in
            switch response.result {
            case .success:
                print(response.value)
            case .failure(let err):
                print(err.responseCode)
            
            }
        }
    }
}

struct PageOneView_Previews: PreviewProvider {
    static var previews: some View {
        PageOneView()
    }
}
