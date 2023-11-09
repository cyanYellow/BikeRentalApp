//
//  RoadBikeModel.swift
//  BikeRentalApp
//
//  Created by Willie Green on 11/9/23.
//

import SwiftUI

// Road Bikes Data Model

struct RoadBike: Identifiable{
    var id = UUID()
    var brand: String
    var model: String
    var price: Int
    var image: String
}
