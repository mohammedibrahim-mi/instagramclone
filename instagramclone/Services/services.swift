//
//  services.swift
//  instagramclone
//
//  Created by Pixel on 21/09/23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestoreSwift
import Firebase


class AuthServices{
    
    
    static let shared = AuthServices()
    
    @MainActor
    func createUser(email: String, password : String) async throws {
        
        print("\(email)")
        print("\(password)")
        
        do{
            
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            
            print("Creating user")
            
            await self.uploadData(uid: result.user.uid,password: password,email: email)
            
            print("Saved to DB")
            
        }
        catch{
            print("firebase failed \(error.localizedDescription)")
        }
        
        
    }
    
    private  func uploadData(uid : String,password: String, email: String) async {
        
       let user =  User(id: uid, username: password, email: email)
       guard  let encodedUser = try? Firestore.Encoder().encode(user)
        else{
            return
        }
        
        try? await Firestore.firestore().collection("users").document(user.id).setData(encodedUser)
    }
    
    
}
