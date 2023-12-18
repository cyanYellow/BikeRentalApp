//
//  CustomerProfileView.swift
//  BikeRentalApp
//
//  Created by Willie Green on 11/6/23.
//

import SwiftUI
import Firebase

struct CustomerProfileCardView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var reservationAmount = reservations.count
    
    var body: some View{
        
        let user = viewModel.currentUser 
        
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
                            Text(user?.fullName ?? "no user found")
                        }
                        .frame(width: 120, height: 200)
                        .offset(x:20, y: 50)
                        VStack(alignment: .leading){
                            if reservationAmount == 0{
                                Text("N/A")
                                    .bold()
                                Text("Next Reservation")
                                    .font(.caption)
                                Spacer()
                                Text("0")
                                    .bold()
                                Text("Upcomming Resevations")
                                    .font(.caption)
                            }else{
                                Text("\(reservations[0].reservedDates.start.formatted(date: .numeric, time: .omitted))")
                                    .bold()
                                Text("Next Reservation")
                                    .font(.caption)
                                Spacer()
                                Text("\(reservationAmount)")
                                    .bold()
                                Text("reservations")
                                    .font(.caption)
                            }
                        }
                        .frame(width: 230, height: 160)
                        .offset(y: 50)
                        
                    }
                }
                Button{
                    viewModel.signOut()
                    
                } label:{
                    HStack{
                        Image(systemName: "delete.backward.fill")
                            .foregroundStyle(.green)
                        Text("Sign out")
                            .foregroundStyle(.black)
                    }
                }
                .offset(y: 50)
                
                VStack{
                    Divider()
                        Text("Resevations")
                            .font(.title2)
                            .padding()
                    VStack(alignment: .leading){
                    if reservationAmount == 0 {
                        Text("No upcomming Resevations")
                    }else{
                        ForEach(reservations) { reservation in
                            HStack{
                                Text("\(reservation.reservedDates.start.formatted(date: .numeric, time: .omitted))")
                                //Spacer()
                                Image(systemName: "arrow.right")
                                //Spacer()
                                Text("\(reservation.reservedDates.end.formatted(date: .numeric, time: .omitted))")
                            }
                            HStack(alignment: .firstTextBaseline){
                                Text(reservation.reservedBike.brand)
                                Text(reservation.reservedBike.model)
                                    .font(.callout)
                            }
                            HStack {
                                Text("$ \(reservation.cost)")
                                Spacer()
                            }
                            Divider()
                        }
                            
                        }
                    }
                }
                .padding(.horizontal)
                .offset(y: 50)
                Spacer()
            }
        }
    }
}

#Preview {
    CustomerProfileCardView()
}
