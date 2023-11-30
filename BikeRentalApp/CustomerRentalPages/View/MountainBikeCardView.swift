//
//  BikeView.swift
//  BikeRentalApp
//
//  Created by Willie Green on 11/3/23.
//

import SwiftUI

struct MountainBikeCardView: View {
    
    var mountainBike: Bike
    
    var body: some View {
        ZStack {
            Image(mountainBike.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 350, height:300)
                .cornerRadius(10)
                .shadow(color: (Color(red: 0, green: 0, blue: 0, opacity: 0.4)), radius: 5, x:5, y: 5)
            Rectangle()
                .fill(Color(red: 0, green: 0, blue: 0, opacity: 0.65))
                .frame(width: 350, height:100)
                .cornerRadius(10)
                .offset(CGSize(width:0.0, height: 100.0))
            VStack(alignment: .leading){
                HStack(alignment: .top){
                    Text(mountainBike.brand)
                        .foregroundColor(.white)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text(mountainBike.model)
                    .foregroundColor(.white)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
                
                Text("$\(mountainBike.price) per 24 hour period")
                    .foregroundColor(.white)
                    .font(.caption)
                Text(mountainBike.travel)
                    .foregroundColor(.white)
                    .font(.caption)
            }
            .frame(width: 330, height: 100, alignment: .topLeading)
            .offset(CGSize(width: 0.0, height: 110.0))

                
        }
        .padding()
    }
}

#Preview {
    MountainBikeCardView(mountainBike: bikeData[4])
}

