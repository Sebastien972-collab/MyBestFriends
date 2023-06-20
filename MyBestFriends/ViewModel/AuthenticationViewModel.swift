//
//  SignUpVM.swift
//  MyBestFriends
//
//  Created by Sébastien DAGUIN on 19/06/2023.
//

import Foundation

class SignUpVM: ObservableObject {
    var username = ""
    var email = ""
    var password = ""
    var confirmPassword = ""
    
    var showError =  false
    var error: Error = SignUpError.uknowError
    var inProgress = false
    var isComplete = false
    
    
    func signUpWithEmail() {
        guard password == confirmPassword else {
            return launchError(SignUpError.passwordIsDifferent)
        }
        guard !username.isEmpty, !email.isEmpty, !password.isEmpty else {
            return launchError(SignUpError.fieldEmpty)
        }
    }
    
    func launchError(_ error: Error) {
    self.error = error
       showError = true
       inProgress = true
   }
}
