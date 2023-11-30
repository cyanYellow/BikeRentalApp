//
//  ContentView.swift
//  BikeRentalApp
//
//  Created by Willie Green on 11/29/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        Group{
            if viewModel.userSession != nil {
                MaintabView()
            } else {
                LandingPageView()
            }
        }
    }
}

#Preview {
    ContentView()
}
