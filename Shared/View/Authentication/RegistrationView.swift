//
//  RegistrationView.swift
//  SwiftUIChatTutorial (iOS)
//
//  Created by Yoonju Hwang on 12/6/21.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        VStack{
            VStack(alignment: .leading, spacing: 12){
                HStack { Spacer() }
                
                Text("Get started.")
                    .font(.largeTitle)
                    .bold()
                
                Text("Create your account.")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.purple)
                
                VStack(spacing:32){
                    CustomTextField(imageName: "envelope",
                                    placeholderText: "Email",
                                    isSecureField: false,
                                    text: $email)
                    
                    CustomTextField(imageName: "person",
                                    placeholderText: "Username",
                                    isSecureField: false,
                                    text: $username)
                    
                    CustomTextField(imageName: "person",
                                    placeholderText: "Email",
                                    isSecureField: false,
                                    text: $fullname)
                    
                    CustomTextField(imageName: "lock",
                                    placeholderText: "Password",
                                    isSecureField: true,
                                    text: $password)
                    
                }
                .padding([.top, .horizontal, .bottom], 32)
                
            }
            .padding(.leading)
            
            Button(action:
                    {print("Handle sign up..")},
                   label:
                    {Text("Sign Up")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(Color.purple)
                        .clipShape(Capsule())
                        .padding()
            })
            .padding(.top, 24)
            .shadow(color: .gray, radius: 10, x:0.0, y:0.0)
            
            Spacer()
            
            Button(action: {mode.wrappedValue.dismiss()}, label: {
                HStack{
                    Text("Already have an account?")
                        .foregroundColor(.purple)
                        .font(.system(size: 14))
                    
                    Text("Sign In")
                        .foregroundColor(.purple)
                        .font(.system(size:14, weight: .semibold))
                }
            })
            .padding(.bottom,32)
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
