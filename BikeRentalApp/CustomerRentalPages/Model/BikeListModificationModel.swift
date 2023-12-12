//
//  BikeListModificationModel.swift
//  BikeRentalApp
//
//  Created by Willie Green on 12/11/23.
//

import Foundation
import SwiftUI

class BikeListModificationModel: ObservableObject {
    @Published var dataArray: [Bike] = []
    
    init() {
        
    }
    
    func getBikes(){
        let bikes = bikeData
        self.dataArray.append(contentsOf: bikes)
    }
}
