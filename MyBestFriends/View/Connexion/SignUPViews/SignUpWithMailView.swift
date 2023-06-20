//
//  SignUpWithMailView.swift
//  MyBestFriends
//
//  Created by Sébastien DAGUIN on 19/06/2023.
//

import SwiftUI

struct SignUpWithMailView: View {
    @ObservedObject var signUpVm: SignUpVM
    var body: some View {
        VStack(content: {
            BannerView()
            CustomFormTextField(isSecureField: false, title: "Username", text: $signUpVm.username)
            CustomFormTextField(isSecureField: false, title: "Email", text: $signUpVm.username)
            CustomFormTextField(isSecureField: true, title: "Password", text: $signUpVm.username)
            CustomFormTextField(isSecureField: true, title: "Confirm password", text: $signUpVm.username)
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Continue")
                    .bold()
                    .font(.title2)
                    .frame(maxWidth: 300, maxHeight: 50)
                    .foregroundStyle(.black)
                    .border(Color.black)
            })
            .padding()
        })
    }
}

#Preview {
    SignUpWithMailView(signUpVm: SignUpVM())
}
