//
//  RoadBikeListView.swift
//  BikeRentalApp
//
//  Created by Willie Green on 11/6/23.
//

import SwiftUI

struct RoadBikeList: View {
    
    var roadBikes: [RoadBike] = roadBikesData
    
    var body: some View {
        NavigationView {
            List{
                VStack{
                    ForEach(roadBikes[0...0]){ item in
                        RoadBikeCardView(roadBike: item)
                    }
                }
            }
        }
    }
}

#Preview {
    RoadBikeList()
}
