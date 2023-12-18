//
//  SavedRentalModel.swift
//  Evo Bike Rental
//
//  Created by Willie Green on 12/18/23.
//

import Foundation

struct Reservation: Hashable, Identifiable {
    
    var id = UUID()
    var reservedBike: Bike
    var reservedDates: DateInterval
    var cost: String
    
}
