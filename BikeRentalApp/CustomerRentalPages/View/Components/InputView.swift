//
//  InputView.swift
//  BikeRentalApp
//
//  Created by Willie Green on 11/29/23.
//

import SwiftUI

struct InputView: View {
    
    @Binding var text: String
    let title: String
    let placeholder: String
    var isSecureField = false
    
    var body: some View {
        VStack{
            if isSecureField {
                SecureField(placeholder, text: $text)
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .autocapitalization(.none)
            } else{
                TextField(placeholder, text: $text)
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .autocapitalization(.none)
            }
            
        }
    }
}

#Preview {
    InputView(text: .constant(""), title: "Email Address", placeholder: "name@example.com")
}

