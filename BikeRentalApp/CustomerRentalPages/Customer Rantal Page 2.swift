//
//  Customer Rantal Page 2.swift
//  BikeRentalApp
//
//  Created by Willie Green on 10/26/23.
//
import SwiftUI

struct BikeList: View {
    
    var bikes: [Bike] = bikesData
    
    var body: some View {
        TabView {
            VStack{
                ForEach(bikes[0...5]){ item in
                    BikeCardView(bike: item)
                }
            }
        }
    }
}

#Preview {
    BikeList()
}

