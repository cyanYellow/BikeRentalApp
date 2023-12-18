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
    //let userReservations: [Reservation]
}
