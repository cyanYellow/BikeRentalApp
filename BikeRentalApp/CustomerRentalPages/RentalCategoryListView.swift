//
//  Customer Rantal Page 1.swift
//  BikeRentalApp
//
//  Created by Willie Green on 10/26/23.
//

import SwiftUI

struct BikeCatagoryView: View {
    var body: some View{
        NavigationStack{
            VStack(spacing: 30){
                NavigationLink(destination: MountainBikeList()){
                    Text("Mountain Bike")
                }
                NavigationLink(destination: RoadBikeList()){
                    Text("Road Bike")
                }
                NavigationLink(destination: HybridBikeList()){
                    Text("Hybrid Bike")
                }
                .navigationBarTitle("What Kind of bike are you renting?", displayMode: .inline)
            }
        }
        
    }
}

#Preview {
    BikeCatagoryView()
}
