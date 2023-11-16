//
//  BikeModel.swift
//  BikeRentalApp
//
//  Created by Willie Green on 11/3/23.
//

import SwiftUI

// Mountain Bikes Data Model

struct MountainBike: Hashable{
    var id = UUID()
    var brand: String
    var model: String
    var price: Int
    var travel: String
    var image: String
}
