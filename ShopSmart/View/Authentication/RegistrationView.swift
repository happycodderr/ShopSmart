//
//  RegistrationView.swift
//  ShopSmart
//
//  Created by Admin on 26/10/2023.
//

import SwiftUI

struct RegistrationView: View {

    @State private var email = ""
    @State private var fullname = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: AuthViewModel

    var body: some View {
        VStack {

            Image("signin")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 120)
                .padding(.vertical, 32)

            VStack(spacing: 24) {
                InputView(text: $email,
                          title: "Email Address",
                          placeHolder: "name@example.com")
                .autocapitalization(.none)

                InputView(text: $fullname,
                          title: "Full Name",
                          placeHolder: "Enter your name")

                InputView(text: $password,
                          title: "Password",
                          placeHolder: "Enter your password",
                          isSecureField: true)

                ZStack (alignment: .trailing) {
                    InputView(text: $confirmPassword,
                              title: "Confirm Password",
                              placeHolder: "Confirm your password",
                              isSecureField: true)
                    if !password.isEmpty && !confirmPassword.isEmpty {
                        if password == confirmPassword {
                            Image(systemName: "checkmark.circle.fill")
                                .imageScale(.large)
                                .fontWeight(.bold)
                                .foregroundColor(Color(.systemGreen))
                        } else {
                            Image(systemName: "xmark.circle.fill")
                                .imageScale(.large)
                                .fontWeight(.bold)
                                .foregroundColor(Color(.systemRed))
                        }
                    }
                }
            }
            .padding( .horizontal)
            .padding(.top, 12)

            Button {
                Task {
                    try await viewModel.createUser(withEmail:email,
                                                   password:password,
                                                   fullName:fullname)
                }
            } label: {
                HStack {
                    Text("Sign Up")
                        .fontWeight(.semibold)
                    Image(systemName: "arrow.right")
                }
                .foregroundColor(.white)
                .frame(width: UIScreen.main.bounds.width - 32 , height: 40)
            }
            .background(Color(.systemBlue))
//            .disabled(!formValid)
//            .opacity(formValid ? 1.0: 0.5)
            .cornerRadius(10)
            .padding(.top ,24)
            Spacer()

            Button {
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("Already  have an account?")
                    Text("Sign In")
                        .fontWeight(.bold)
                }
                .font(.system(size: 14))
            }
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
