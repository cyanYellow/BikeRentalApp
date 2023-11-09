//
//  HybridBikeListView.swift
//  BikeRentalApp
//
//  Created by Willie Green on 11/6/23.
//

import SwiftUI

struct HybridBikeList: View {
    
    var hybridBikes: [HybridBike] = hybridBikesData
    
    var body: some View {
        NavigationView {
            List{
                VStack{
                    ForEach(hybridBikes[0...1]){ item in
                        HybridBikeCardView(hybridBike: item)
                        
                    }
                }
            }
        }
    }
}

#Preview {
    HybridBikeList()
}
