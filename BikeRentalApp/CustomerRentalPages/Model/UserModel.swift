//
//  UserModel.swift
//  BikeRentalApp
//
//  Created by Willie Green on 11/6/23.
//

import SwiftUI

// User Data Model

struct User: Identifiable{
    var id = UUID()
    var email: String
    var password: String
    var name: String
    var nextReservation: DateInterval?
    var upcommingReservations: DateInterval?
    var allReservations: [DateInterval]?
    var profileImage: String
}
