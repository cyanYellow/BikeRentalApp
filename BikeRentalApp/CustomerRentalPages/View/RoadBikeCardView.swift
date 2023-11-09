//
//  RoadBikeCardView.swift
//  BikeRentalApp
//
//  Created by Willie Green on 11/9/23.
//

import SwiftUI

struct RoadBikeCardView: View {
    
    var roadBike: RoadBike
    
    var body: some View {
        ZStack {
            Image(roadBike.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 350, height:200)
                .cornerRadius(10)
                .shadow(color: (Color(red: 0, green: 0, blue: 0, opacity: 0.4)), radius: 5, x:5, y: 5)
            Rectangle()
                .fill(Color(red: 0, green: 0, blue: 0, opacity: 0.65))
                .frame(width: 350, height:100)
                .cornerRadius(10)
                .offset(CGSize(width:0.0, height: 50.0))
            VStack(alignment: .leading){
                HStack(alignment: .top){
                    Text(roadBike.brand)
                        .foregroundColor(.white)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text(roadBike.model)
                    .foregroundColor(.white)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
                
                Text("$\(roadBike.price) per 24 hour period")
                    .foregroundColor(.white)
                    .font(.caption)
            }
            .frame(width: 330, height: 100, alignment: .topLeading)
            .offset(CGSize(width: 0.0, height: 60.0))

                
        }
        .padding()
    }
}

#Preview {
    RoadBikeCardView(roadBike: roadBikesData[0])
}

