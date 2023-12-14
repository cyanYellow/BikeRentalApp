//
//  BikeDetailView.swift
//  BikeRentalApp
//
//  Created by Willie Green on 11/15/23.
//

import SwiftUI

struct BikeDetailView: View{
    
    var bike: Bike?
    @State var didConfirmBike = false
    @Binding var rentalDuration: Int
    @Binding var rentalPeriod: DateInterval
    var body: some View{
        
        
        VStack{
            Image(bike!.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 300)
            ScrollView{
                VStack(alignment: .leading){
                    Text(bike!.brand)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Text(bike!.model)
                        .font(.largeTitle)
                    Divider()
                    
                    Collapsible(
                        label: { Text("Overview") },
                        content: {
                            HStack {
                                Text(bike!.overview)
                                    .fontWeight(.light)
                                Spacer()
                            }
                            //.frame(maxWidth: .infinity)
                            .padding()
                        }
                    )
                   // .frame(maxWidth: .infinity)
                    
                    Divider()
                    
                    Collapsible(
                        label: { Text("Specs") },
                        content: {
                            VStack{
                                HStack {
                                    Text("Used For:")
                                    Spacer()
                                    Text(bike!.usedFor)
                                }
                                HStack {
                                    Text("Gearing:")
                                    Spacer()
                                    Text(bike!.gearing)
                                }
                                HStack {
                                    Text("Frame Material:")
                                    Spacer()
                                    Text(bike!.frameMaterial)
                                }
                                
                            }
                            //.frame(maxWidth: .infinity)
                            .padding()
                        }
                    )
                    //.frame(maxWidth: .infinity)
                }
            }
            
            //.frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
        }
        .ignoresSafeArea()
        .padding(.bottom, 65)
        .overlay(alignment: .bottom){
            VStack{
                Divider()
                    .padding(.bottom)
                HStack{
                    VStack(alignment: .leading){
                        
                        Text("$\(rentalDuration * bike!.price)")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Total before taxes")
                            .font(.caption)
                        Text("\(rentalPeriod)")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .underline()
                        
                        
                        
                    }
                    .padding(.horizontal, 30)
                    //Spacer()
                    
                    Button(action: {
                        didConfirmBike.toggle()
                    }, label: {
                        HStack{
                            Text("Reserve")
                                .foregroundColor(.white)
                            Image(systemName: "plus.circle")
                                .foregroundStyle(.white)
                        }
                        .frame(width: 150, height: 50)

                        .background(Color.green)
                        .cornerRadius(30)
                        .shadow(color: (Color(red: 0, green: 0, blue: 0, opacity: 0.4)), radius: 5, x:5, y: 5)
                        
                    })
                    .padding(.horizontal, 30)
                    .navigationDestination(isPresented: $didConfirmBike){
                        if let bike = bike{
                            
                            CheckoutView(selectedBike: bike, rentalDuration: $rentalDuration, rentalPeriod: $rentalPeriod)
                        }
                    }
                }
            }
            .background(.white)
        }
    }
}
#Preview {
    BikeDetailView(bike: bikeData[3], rentalDuration: .constant(2), rentalPeriod: .constant(DateInterval(start: Date.now, end: Date.now)))
}
