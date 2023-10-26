//
//  LoginView.swift
//  EasyShopee
//
//  Created by Admin on 23/10/2023.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var viewModel: AuthViewModel
    @State private var email:String = ""
    @State private var password:String = ""

    var body: some View {
        NavigationStack {
            VStack {
                // Image
                Image("loginReg")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .padding(.vertical, 30)
                
                // Form fields
                
                VStack{
                    //email address
                    InputView(text: $email,
                              title: "Email Address",
                              placeHolder: "email@address.com")
                    .autocapitalization(.none)
                    
                    // password field
                    InputView(text: $password,
                              title: "Password",
                              placeHolder: "Enter your password",
                              isSecureField: true)
                }
                .padding(.horizontal)
                .padding(.top, 40)
                
                // Forgot Password
                
                VStack(alignment: .trailing, spacing: 10) {
                    NavigationLink(destination: ForgotPasswordView()) {
                          Text("Forgot Password")
                    }
                }
                
                // Sign in button
                
                Button {
                    Task {
                        try await viewModel.signIn(withEmail: email, password: password)
                    }
                } label: {
                    HStack  {
                        Text ("Sign In")
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .frame(width:UIScreen.main.bounds.width - 50, height: 45)
                }
                .background(Color(.systemBlue))
                .cornerRadius(10)
                .padding(.top, 20)
                
                Spacer()
                // Sign up button
                
                NavigationLink {
                   
                } label: {
                    HStack {
                        Text("Don't have an account?")
                        Text("Sign up")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 18))
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
