//
//  SignUpView.swift
//  MyBestFriends
//
//  Created by Sébastien DAGUIN on 19/06/2023.
//

import SwiftUI
import AuthenticationServices

struct SignUpView: View {
    @ObservedObject var signUpVM: SignUpVM
    @State var connexionWithMail = false
    var body: some View {
        NavigationStack {
            VStack(content: {
                BannerView()
                VStack(content: {
                    SignInWithAppleButton(.continue) { appleIdRequest in
                        
                    } onCompletion: { result in
                        
                    }
                    .frame(maxWidth: 350,maxHeight: 60)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding()
                    
                    Divider()
                    
                    Text("Ou")
                    
                    Button(action: {
                        connexionWithMail.toggle()
                    }, label: {
                        Label("S'inscrire avec un mail ", systemImage: "envelope.fill")
                            .frame(maxWidth: 300, maxHeight: 50)
                            .foregroundStyle(.black)
                            .border(Color.black)
                    })
                    .navigationDestination(isPresented: $connexionWithMail) {
                        SignUpWithMailView(signUpVm: signUpVM )
                    }
                })
                .padding()
            })
        }
    }
}

#Preview {
    SignUpView(signUpVM: SignUpVM())
}
