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
    @State private var conformPassword = ""
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
            InputView(text: $email,
                      title: "Email Address",
                      placeholder: "Email Address")
            .padding()
            InputView(text: $fullName,
                      title: "Full Name",
                      placeholder: "Full Name")
            .padding()
            InputView(text: $password,
                      title: "Password",
                      placeholder: "password", isSecureField: true)
            .padding()
            InputView(text: $conformPassword,
                      title: "Conform Password",
                      placeholder: "Confirm Password", isSecureField: true)
            .padding()
            Spacer()
            
            Button{
                Task{
                    try await viewModel.createUser(withEmail: email, password: password, fullName: fullName)
                }
            } label:{
                Text("Sign up")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: 50)
            }
            .background(Color.green)
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

#Preview {
    RegistrationView()
}

