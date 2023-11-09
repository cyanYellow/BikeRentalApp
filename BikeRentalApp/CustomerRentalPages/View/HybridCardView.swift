//
//  HybridCardView.swift
//  BikeRentalApp
//
//  Created by Willie Green on 11/9/23.
//

import SwiftUI

struct HybridBikeCardView: View {
    
    var hybridBike: HybridBike
    
    var body: some View {
        ZStack {
            Image(hybridBike.image)
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
                    Text(hybridBike.brand)
                        .foregroundColor(.white)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text(hybridBike.model)
                    .foregroundColor(.white)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
                
                Text("$\(hybridBike.price) per 24 hour period")
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
    HybridBikeCardView(hybridBike: hybridBikesData[0])
}
