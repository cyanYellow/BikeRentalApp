//
//  Customer Rantal Page 2.swift
//  BikeRentalApp
//
//  Created by Willie Green on 10/26/23.
//
import SwiftUI

struct MountainBikeList: View {
    
    var bikes: [MountainBike] = mountainBikesData
    
    var body: some View {
        NavigationView {
            List{
                VStack{
                    ForEach(bikes[0...5]){ item in
                        MountainBikeCardView(mountainBike: item)
                    }
                }
            }
        }
        .navigationTitle("")
    }
}

#Preview {
    MountainBikeList()
}

