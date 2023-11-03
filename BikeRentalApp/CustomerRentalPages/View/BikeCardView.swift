//
//  BikeView.swift
//  BikeRentalApp
//
//  Created by Willie Green on 11/3/23.
//

import SwiftUI

struct BikeCardView: View {
    
    var bike: Bike
    
    var body: some View {
        ZStack {
            Image(bike.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250, height:200)
                .cornerRadius(10)
            Rectangle()
                .fill(Color(red: 0, green: 0, blue: 0, opacity: 0.65))
                .frame(width: 250, height:100)
                .cornerRadius(10)
            VStack(alignment: .leading){
                HStack(alignment: .top){
                    Text(bike.brand)
                        .foregroundColor(.white)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text(bike.model)
                    .foregroundColor(.white)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
                Text("$\(bike.price) per 24 hour period")
                    .foregroundColor(.white)
                    .font(.caption)
                Text(bike.travel)
                    .foregroundColor(.white)
                    .font(.caption)
            }
                
        }
        .padding()
    }
}

#Preview {
    BikeCardView(bike: bikesData[4])
}

