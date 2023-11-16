//
//  CustomerProfileView.swift
//  BikeRentalApp
//
//  Created by Willie Green on 11/6/23.
//

import SwiftUI

struct CustomerProfileCardView: View {
    var body: some View{
        ZStack{
            VStack(spacing: 30){
                ZStack(alignment: .top){
                    Rectangle()
                        .fill(.white)
                        .frame(width: 350, height:200)
                        .cornerRadius(10)
                        .offset(CGSize(width:0.0, height: 50.0))
                        .shadow(color: (Color(red: 0, green: 0, blue: 0, opacity: 0.4)), radius: 5, x:5, y: 5)
                    HStack{
                        VStack(alignment: .center, spacing: 20){
                            Ellipse()
                                .frame(width: 120, height: 120)
                            Text("USERNAME")
                        }
                        .frame(width: 120, height: 200)
                        .offset(x:20, y: 50)
                        VStack(alignment: .leading){
                            Text("N/A")
                                .bold()
                            Text("Next Reservation")
                                .font(.caption)
                            Spacer()
                            Text("0")
                                .bold()
                            Text("Upcomming Resevations")
                                .font(.caption)
                            Spacer()
                            Text("0")
                                .bold()
                            Text("Past Reservatioins")
                                .font(.caption)
                            
                        }
                        .frame(width: 230, height: 160)
                        .offset(y: 50)
                        
                    }
                }
                Spacer()
                
                Form{
                    
                }
            }
            
            Rectangle()
                .fill(.white)
                .frame(width: 400 , height: 100)
                .offset(y: 365)
            NavigationLink(destination: BikeCatagoryView()){
                HStack{
                    Text("Create Reservation")
                        .foregroundColor(.white)
                    Image(systemName: "plus.circle")
                        .foregroundStyle(.white)
                }
                .frame(width: 350, height: 50)
                .background(Color.green)
                .cornerRadius(30)
                .shadow(color: (Color(red: 0, green: 0, blue: 0, opacity: 0.4)), radius: 5, x:5, y: 5)
            }
            .offset(y: 365)
            Spacer()
        }
    }
}

#Preview {
    CustomerProfileCardView()
}
