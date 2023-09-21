//
//
//  loginView.swift
//  instagramclone
//
//  Created by Pixel on 20/09/23.
//

import SwiftUI

struct loginView: View {
    
    
 
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        
        NavigationStack{
            VStack(spacing : 4){
                Spacer()
               Image("Image")
                .resizable()
                .frame(width: 200,height: 80)
                TextField("Enter your email", text: $viewModel.email)
                    .padding(12)
                    .tint(Color.black)
                    .foregroundColor(Color.black)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(5)
                    .padding(.horizontal,24)
                
                TextField("Enter your password", text: $viewModel.password)
                    .padding(12)
                    .tint(Color.black)
                    .foregroundColor(Color.black)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(5)
                    .padding(.horizontal,24)
    
                Text("Forgot Password ?")
                    .foregroundColor(Color.blue)
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity,alignment: .trailing)
                    .padding(.horizontal)
                
                Button{
                    Task{
                        
                        try await viewModel.createUser()
                        
                    }
                }label: {
                    Text("Login")
                        .frame(width: 350,height: 40)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(8)
                }
                
                HStack(spacing:4){
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width / 2 - 40,height: 1)
                        .foregroundColor(Color.gray.opacity(0.2))
                    
                    Text("OR")
                        .font(.footnote)
                        .foregroundColor(Color.gray.opacity(0.5))
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width / 2 - 40 ,height: 1)
                        .foregroundColor(Color.gray.opacity(0.2))
                    
                    
                }
                .padding(.vertical)
                Spacer()
                
                VStack{
                    
                    Divider()
                        .background(Color.gray)
                   
                   
                    NavigationLink{
                        ForgotView()
                            .navigationBarBackButtonHidden(true)
                    }label: {
                        HStack{
                            Text("Don't have an account?")
                                .font(.footnote)
                                .foregroundColor(Color.blue)
                            Text(" Sign UP")
                                .font(.footnote)
                                .fontWeight(.medium)
                                .foregroundColor(Color.blue)
                        }
                    }  .padding(.top,10)
                    

                }.padding(.vertical,30)
                  

            }
            .padding(.all,0)
        }
        
      
    }
}

//
//struct loginView_Previews: PreviewProvider {
//    static var previews: some View {
//        loginView()
//    }
//}
