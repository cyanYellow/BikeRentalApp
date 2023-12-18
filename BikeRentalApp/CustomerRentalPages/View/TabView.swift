//
//  TabView.swift
//  BikeRentalApp
//
//  Created by Willie Green on 11/29/23.
//

import SwiftUI

struct MaintabView: View {
    
    @State var selection = 1
    
    var body: some View {
        NavigationStack{
            TabView(selection: $selection){
                BikeListView()
                    .tabItem { Label("Browse", systemImage: "bicycle")
                    }
                    .tag(1)
                
                CustomerProfileCardView()
                    .tabItem { Label("Profile", systemImage: "person")
                    }
                    .tag(2)
            }
        }
    }
}

#Preview {
    MaintabView()
}
