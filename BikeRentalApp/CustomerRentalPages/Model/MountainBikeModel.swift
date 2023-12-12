//
//  BikeModel.swift
//  BikeRentalApp
//
//  Created by Willie Green on 11/3/23.
//

import SwiftUI

// Mountain Bikes Data Model

struct Bike: Hashable{
    var id = UUID()
    var type: String
    var brand: String
    var model: String
    var price: Int
    var travel: String
    var image: String
    var overview: String
    var usedFor: String
    var gearing: String
    var frameMaterial: String
}
