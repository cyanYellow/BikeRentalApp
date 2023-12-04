//
//  RegistrationView.swift
//  BikeRentalApp
//
//  Created by Willie Green on 11/29/23.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email = ""
    @State private var fullName = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @EnvironmentObject var viewModel: AuthViewModel
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            
            //Heading
            Image("EvoLogo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 30)
                .padding()
            Text("Create Account")
                .font(.largeTitle)
                .padding()
            
            // Input Fields
            VStack{
                ZStack(alignment: .leading){
                    if !email.isEmpty {
                        if email.contains("@"){
                            
                        }else{
                            Text("invalid email address")
                                .padding([.top, .leading, . trailing])
                                .font(.footnote)
                                .foregroundStyle(.red)
                                .offset(y: -45)
                        }
                    }
                    InputView(text: $email,
                              title: "Email Address",
                              placeholder: "Email Address")
                    .padding()
                }
                
                ZStack(alignment: .leading){
                    if !fullName.isEmpty {
                        if fullName.contains(" "){
                            
                        }else{
                            Text("must use space between first and last name")
                                .padding([.top, .leading, . trailing])
                                .font(.footnote)
                                .foregroundStyle(.red)
                                .offset(y: -45)
                        }
                    }
                    InputView(text: $fullName,
                              title: "Full Name",
                              placeholder: "Fisrtname Lastname")
                    .padding()
                }
                
                ZStack(alignment: .leading){
                    if !password.isEmpty {
                        if password.count > 5{
                            
                        }else{
                            Text("password must conatin at least 6 characters")
                                .padding([.top, .leading, . trailing])
                                .font(.footnote)
                                .foregroundStyle(.red)
                                .offset(y: -45)
                        }
                    }
                    InputView(text: $password,
                              title: "Password",
                              placeholder: "Password", isSecureField: true)
                    .padding()
                }
                
                ZStack(alignment: .leading){
                    if !confirmPassword.isEmpty {
                        if confirmPassword == password{
                            
                        }else{
                            Text("passwords do no match")
                                .padding([.top, .leading, . trailing])
                                .font(.footnote)
                                .foregroundStyle(.red)
                                .offset(y: -45)
                        }
                    }
                    InputView(text: $confirmPassword,
                              title: "Conform Password",
                              placeholder: "Confirm Password", isSecureField: true)
                    .padding()
                }
                Spacer()
            }
            
            Button{
                Task{
                    try await viewModel.createUser(withEmail: email, password: password, fullName: fullName)
                }
            } label:{
                Text("Sign up")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: 50)
            }
            .background(formIsValid ? Color.green : Color.gray)
            .disabled(!formIsValid)
            .cornerRadius(30)
            .shadow(color: (Color(red: 0, green: 0, blue: 0, opacity: 0.4)), radius: 5, x:5, y: 5)
            .padding()
            
            Button{
                dismiss()
            } label:{
                HStack{
                    Text("Already have an account?")
                        .foregroundStyle(.gray)
                    Text("Log in")
                        .foregroundStyle(.black)
                        .fontWeight(.bold)
                        .underline()
                }
            }
        }
    }
}

extension RegistrationView: AuthenicationFormProtocol{
    var formIsValid: Bool {
        return !email.isEmpty
        && email.contains("@")
        && fullName.contains(" ")
        && !password.isEmpty
        && password.count > 5
        && confirmPassword == password
    }
}

#Preview {
    RegistrationView()
}

