//
//  FacebookLogin.swift
//  MyBestFriends
//
//  Created by Sébastien DAGUIN on 07/06/2023.
//

import SwiftUI
import FacebookLogin
import FBSDKLoginKit

struct FacebookLogin: View {
    let loginButton = FBLoginButton()
    
    
    var body: some View {
        VStack {
            Button {
            } label: {
                Text("Facebook Login")
            }
            
            
        }
        
    }
}

struct FacebookLogin_Previews: PreviewProvider {
    static var previews: some View {
        FacebookLogin()
    }
}
