//
//  UserImageView.swift
//  MyBestFriends
//
//  Created by Sébastien DAGUIN on 08/06/2023.
//

import SwiftUI

struct UserImageView: View {
    var url: URL
    
    var body: some View {
        AsyncImage(url: url) { image in
            image.resizable()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
        } placeholder: {
            ProgressView()
        }
        .frame(width: 50, height: 50)
    }
}

struct UserImageView_Previews: PreviewProvider {
    static var previews: some View {
        UserImageView(url: URL(string: "https://scontent-cdg4-2.cdninstagram.com/v/t51.2885-15/74348659_263381334603504_6293317930592904614_n.jpg?stp=dst-jpg_e35&_nc_ht=scontent-cdg4-2.cdninstagram.com&_nc_cat=100&_nc_ohc=Ne-AHFUQw_0AX_UOHd-&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfBKJj7zX5ZhXDOOGycPs3yo7RiddcRcUMYkW2Hfav1YfA&oe=648751BF&_nc_sid=f70a57")!)
    }
}
