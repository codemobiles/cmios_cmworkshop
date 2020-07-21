//
//  PageOneView.swift
//  CMWorkshop
//
//  Created by Codemobiles Golf on 21/7/2563 BE.
//

import SwiftUI
import Alamofire

struct PageOneView: View {
    @State private var youtubeDataArray: [Youtube] = []
    var body: some View {
        List {
            VStack(alignment: .leading) {
                HStack {
                    Image("ic_face_id")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    VStack(alignment: .leading) {
                        Text("Title")
                        Text("Subtitle")
                    }
                }
                Image("ios_training_header")
                    .resizable()
                    .aspectRatio(1.7, contentMode: .fill)
                    .frame(minWidth: 0, maxWidth: .infinity)
            }
            VStack(alignment: .leading) {
                HStack {
                    Image("ic_face_id")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    VStack(alignment: .leading) {
                        Text("Title")
                        Text("Subtitle")
                    }
                }
                Image("ios_training_header")
                    .resizable()
                    .aspectRatio(1.7, contentMode: .fill)
                    .frame(minWidth: 0, maxWidth: .infinity)
            }
            VStack(alignment: .leading) {
                HStack {
                    Image("ic_face_id")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    VStack(alignment: .leading) {
                        Text("Title")
                        Text("Subtitle")
                    }
                }
                Image("ios_training_header")
                    .resizable()
                    .aspectRatio(1.7, contentMode: .fill)
                    .frame(minWidth: 0, maxWidth: .infinity)
            }
        }
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
                do {
                    let result = try JSONDecoder().decode(YoutubeResponse.self, from: response.data!)
                    self.youtubeDataArray.removeAll()
                    self.youtubeDataArray = result.youtubes
                } catch {
                    print(error.localizedDescription)
                }
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
