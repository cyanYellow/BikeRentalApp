//
//  TabView.swift
//  BikeRentalApp
//
//  Created by Willie Green on 11/29/23.
//

import SwiftUI

struct MaintabView: View {
    var body: some View {
        TabView{
            BikeListView()
                .tabItem { Label("Browse", systemImage: "bicycle") }
            
            CustomerProfileCardView()
                .tabItem { Label("Profile", systemImage: "person") }
        }
    }
}

#Preview {
    MaintabView()
}
