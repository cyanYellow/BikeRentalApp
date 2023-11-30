//
//  UserModel.swift
//  BikeRentalApp
//
//  Created by Willie Green on 11/6/23.
//

import SwiftUI

// User Data Model

struct User: Identifiable, Codable{
    let id: String
    let email: String
    let password: String
    let fullName: String
    
    var firstName: String {
        let formatter = PersonNameComponentsFormatter()
        if let components = formatter.personNameComponents(from: fullName) {
            formatter.style = .abbreviated
        }
        
        return ""
    }
}
extension User {
    static var MOCK_USER = User(id: NSUUID().uuidString, email: "test@example.com", password: "Test", fullName:"Lance Armstrong")
}
