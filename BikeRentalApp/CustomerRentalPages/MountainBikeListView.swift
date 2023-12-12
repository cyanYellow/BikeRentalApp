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
    //
    //    var bikes: [Bike] = bikeData
    @Binding var filteredList: [Bike]?
    var fullBikeList: [Bike] = bikeData
    
    var body: some View {
        VStack {
            
            if showSearchView {
                BikeSearchView(show: $showSearchView)
            } else{
                ScrollView{
                    
                    SearchAndFilter()
                        .onTapGesture {
                            withAnimation(.smooth){
                                showSearchView.toggle()
                            }
                        }
                    LazyVStack(spacing: 0){
                        ForEach(filteredList ?? fullBikeList, id: \.self){ bike in
                            Button{
                                selectedBike = bike
                                didSelectBike.toggle()
                            }
                        label: {
                            MountainBikeCardView(mountainBike: bike)
                        }
                    }
                }
            }
            .navigationDestination(isPresented: $didSelectBike){
                if let bike = selectedBike{
                    
                    BikeDetailView(bike: bike)
                    
                }
                }
                
            }
        }
    }
}

#Preview {
    BikeListView()
}

