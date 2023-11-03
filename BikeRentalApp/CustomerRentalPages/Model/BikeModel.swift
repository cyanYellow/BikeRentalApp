//
//  BikeModel.swift
//  BikeRentalApp
//
//  Created by Willie Green on 11/3/23.
//

import SwiftUI

// Bikes Data Model

struct Bike: Identifiable{
    var id = UUID()
    var brand: String
    var model: String
    var price: Int
    var travel: String
    var image: String
}
