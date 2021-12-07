//
//  LoginView.swift
//  SwiftUIChatTutorial (iOS)
//
//  Created by Yoonju Hwang on 12/6/21.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""

    
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 12){
                    HStack { Spacer() }
                    
                    Text("Hello.")
                        .font(.largeTitle)
                        .bold()
                    
                    Text("Welcome Back")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.purple)
                    
                    VStack(spacing:20){
                        CustomTextField(imageName: "envelope",
                                        placeholderText: "Email",
                                        isSecureField: false,
                                        text: $email)
                        
                        CustomTextField(imageName: "lock",
                                        placeholderText: "Password",
                                        isSecureField: true,
                                        text: $password)
                        
                    }
                    .padding([.top, .horizontal, .bottom], 32)
                    
                }
                .padding(.leading)
                
                HStack{
                    Spacer()
                    
                    NavigationLink(
                        destination: Text("Reset password.."),
                        label: {
                            Text("Forgot Password?")
                                .font(.system(size: 13, weight: .semibold))
                                .foregroundColor(.purple)
                                .padding(.top)
                                .padding(.trailing, 28)
                        })
                }
                
                Button(action:
                        {print("Handle sign up..")},
                       label:
                        {Text("Sign In")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 340, height: 50)
                            .background(Color.purple)
                            .clipShape(Capsule())
                            .padding()
                })
                .shadow(color: .gray, radius: 10, x:0.0, y:0.0)
                Spacer()
                
                NavigationLink(
                    destination: RegistrationView()
                        .navigationBarBackButtonHidden(true),
                    label: {
                        HStack{
                            Text("Don't have an account?")
                                .foregroundColor(.purple)
                                .font(.system(size: 14))
                            
                            Text("Sign Up")
                                .foregroundColor(.purple)
                                .font(.system(size:14, weight: .semibold))
                        }
                    }).padding(.bottom, 32)
            }
            
        }
        .padding(.top, -56)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

