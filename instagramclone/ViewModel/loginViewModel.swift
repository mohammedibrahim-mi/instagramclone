//
//  loginViewModel.swift
//  instagramclone
//
//  Created by Pixel on 21/09/23.
//

import Foundation



class LoginViewModel : ObservableObject {
    
    
    @Published  var email = ""
    @Published  var password = ""
    
    
    func createUser() async throws{
        
        
        try await AuthServices.shared.createUser(email: email, password: password)
        
    }
    
    
    
}
