//
//  LoginView.swift
//  PlenyTask-SocialApp
//
//  Created by user on 11/09/2023.
//

import SwiftUI

struct LoginView: View {
    @State var userName:String = ""
    @State var password:String = ""
    var body: some View {
        VStack (spacing: 24) {
            
            VStack(spacing: 24) {
                Image("LoginBg")
                    .resizable()
                    .frame(width: 660 ,height: 440)
                    .scaledToFit()
                
                Text("Welcome")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.82))
                    .multilineTextAlignment(.center)
            }  // :HEADER
            
            UserNameField(userName: $userName)
            
            PasswordField(password: $password)
            
            Spacer().frame(height: 16)
            
            Button {
                print("hi")
            } label: {
                ZStack {
                    Capsule(style: .circular)
                        .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.82))
                    Text("Sign In")
                        .font(.system(size: 17))
                        .foregroundColor(.white)
                }
            } // :LOGIN BUTTON
            .frame(height: 46)
            .padding(.horizontal, 16)
            
        }
        .ignoresSafeArea(.all)
    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
