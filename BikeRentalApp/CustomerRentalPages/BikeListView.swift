//
//  Customer Rantal Page 2.swift
//  BikeRentalApp
//
//  Created by Willie Green on 10/26/23.
//
import SwiftUI

struct BikeListView: View {
    
    @State private var showSearchView = false
    
    //Navigation to detail view
    @State var selectedBike: Bike?
    @State var didSelectBike = false
    
    //Filter List
    @State var filteredList: [Bike] = []
    var fullBikeList: [Bike] = bikeData
    @State var rentalDuration: Int = 0
    @State var rentalPeriod: DateInterval = DateInterval(start: Date.now, end: Date.now)
    @State var showWarning = false
    
    var body: some View {
        VStack {
            
            if showSearchView {
                BikeSearchView(filteredList: $filteredList, show: $showSearchView, rentalDuration: $rentalDuration, rentalPeriod: $rentalPeriod)
            } else{
                ScrollView{
                    HStack{
                        if formIsValid {
                            if showWarning {
                                HStack{
                                    Spacer()
                                    Text("Please slelect rental Period")
                                        .foregroundStyle(.red)
                                        .font(.caption)
                                    Image(systemName: "arrow.right")
                                        .foregroundColor(.red)
                                }
                            }
                            
                        }
                        else{
                            Text("\(rentalDuration) day rental")
                                .foregroundStyle(.green)
                            
                        }
                        Spacer()
                        SearchAndFilter()
                            .onTapGesture {
                                withAnimation(.smooth){
                                    showSearchView.toggle()
                                }
                            }
                    }
                    .padding(.horizontal)
                    LazyVStack(spacing: 0){
                        ForEach(filteredList.isEmpty ? fullBikeList: filteredList, id: \.self){ bike in
                            Button{
                                selectedBike = bike
                                didSelectBike.toggle()
                            }
                        label: {
                            MountainBikeCardView(mountainBike: bike)
                        }
                        .disabled(formIsValid)
                        .onTapGesture {
                            if formIsValid {
                                showWarning = true
                            }
                        }
                    }
                }
            }
            .navigationDestination(isPresented: $didSelectBike){
                if let bike = selectedBike{
                    
                        BikeDetailView(bike: bike, rentalDuration: $rentalDuration, rentalPeriod: $rentalPeriod)
                    
                }
            }
            }
        }
    }
}

extension BikeListView: AuthenicationFormProtocol{
    var formIsValid: Bool {
        return (rentalDuration == 0)
    }
}

#Preview {
    BikeListView()
}

