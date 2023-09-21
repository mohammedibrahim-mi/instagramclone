//
//  ForgotView.swift
//  instagramclone
//
//  Created by Pixel on 20/09/23.
//

import SwiftUI

struct ForgotView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        NavigationStack{
           
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .toolbar{
                    
                    ToolbarItem(placement: .navigationBarLeading){
                        Image(systemName: "chevron.left")
                            .onTapGesture {
                                dismiss()
                            }
                        
                    }
                    
                }
            
        }.navigationTitle("Forgot")

    }
}

struct ForgotView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotView()
    }
}
