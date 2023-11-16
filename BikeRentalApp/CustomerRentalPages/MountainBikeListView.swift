//
//  Customer Rantal Page 2.swift
//  BikeRentalApp
//
//  Created by Willie Green on 10/26/23.
//
import SwiftUI

struct MountainBikeList: View {
    
    @State private var showSearchView = false
    
    var bikes: [MountainBike] = mountainBikesData
    
    var body: some View {
        NavigationStack {
            
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
                        ForEach(bikes, id: \.self){ item in
                            NavigationLink(value: item){
                                MountainBikeCardView(mountainBike: item)
                            }
                        }
                    }
                }
                .navigationDestination(for: Int.self){ item in
                    BikeDetailView()
                }
                
            }
        }
    }
}

#Preview {
    MountainBikeList()
}

