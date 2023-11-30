//
//  BikeDetailView.swift
//  BikeRentalApp
//
//  Created by Willie Green on 11/15/23.
//

import SwiftUI

struct BikeDetailView: View{
    
    var bike: Bike?
    
    var body: some View{
        
        
        VStack{
            Image("Santa_Cruz_Bronson_CC_X01_AXS_END_GT_050_WEB_Res-036")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 300)
            ScrollView{
                VStack(alignment: .leading){
                    Text("Santa Cruz")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Text("Bronson")
                        .font(.largeTitle)
                    Divider()
                    
                    Collapsible(
                        label: { Text("Overview") },
                        content: {
                            HStack {
                                Text("The 2023 mixed-wheel Santa Cruz Bronson extends its genre-spanning reach even further than its predecessors, taking the do-it-all 150mm to Mullet Town. With a 29er leading the way, it has mindblowing grip and smooth rollover juice, while the 27.5 rear wheel helps maintain the maneuverability and playful ride that makes the Bronson Santa Cruz's best selling bike - poppy and as loose as you like. Mountain biking rules, and the Bronson is one of the reasons why.")
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
                                    Text("Trail, Enduro")
                                }
                                HStack {
                                    Text("Gearing:")
                                    Spacer()
                                    Text("1X12")
                                }
                                HStack {
                                    Text("Frame Material:")
                                    Spacer()
                                    Text("Carbon Fiber")
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
                        
                        Text("$260")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Total before taxes")
                            .font(.caption)
                        Text("Nov 15 - 20")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .underline()
                        
                        
                        
                    }
                    .padding(.horizontal, 30)
                    //Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
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
                }
            }
            .background(.white)
        }
    }
}
#Preview {
    BikeDetailView(bike: bikeData[0])
}
