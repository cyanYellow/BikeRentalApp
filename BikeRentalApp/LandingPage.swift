//
//  LandingPage.swift
//  BikeRentalApp
//
//  Created by Willie Green on 10/26/23.
//

import Foundation
import SwiftUI
import AVKit

struct LandingPage: View {
   
    //video player variables
    @State var player = AVPlayer(url: Bundle.main.url(forResource: "BikeBackground", withExtension: "mp4")!)
    
    //login variables
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUserName = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    var body: some View {
        NavigationView{
            ZStack{
                VideoPlayer(player: player)
                
            }
        }
        //.navigationBarHidden(true)
    }
}

#Preview {
    LandingPage()
}
