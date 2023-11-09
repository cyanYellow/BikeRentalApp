//
//  LandingPage.swift
//  BikeRentalApp
//
//  Created by Willie Green on 10/26/23.
//

import SwiftUI
import AVFoundation
import AVKit

struct PlayerView: UIViewRepresentable {
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<PlayerView>) {
    }

    func makeUIView(context: Context) -> UIView {
        return LoopingPlayerUIView(frame: .zero)
    }
}

class LoopingPlayerUIView: UIView {
    private let playerLayer = AVPlayerLayer()
    private var playerLooper: AVPlayerLooper?
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        // Load the resource -> h
        let fileUrl = Bundle.main.url(forResource: "BikeBackground", withExtension: "mp4")!
        let asset = AVAsset(url: fileUrl)
        let item = AVPlayerItem(asset: asset)
        // Setup the player
        let player = AVQueuePlayer()
        playerLayer.player = player
        playerLayer.videoGravity = .resizeAspectFill
        layer.addSublayer(playerLayer)
        // Create a new player looper with the queue player and template item
        playerLooper = AVPlayerLooper(player: player, templateItem: item)
        // Start the movie
        player.play()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
}

struct LandingPageView: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongpassword = 0
    @State private var showingLoginScreen = false
    
    var body: some View {
        NavigationView{
            ZStack{
                GeometryReader{ geo in
                    PlayerView()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geo.size.width, height: geo.size.height+100)
                        .edgesIgnoringSafeArea(.all)
                        .edgesIgnoringSafeArea(.all)
                }
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(.white.opacity(0.8))
                    .frame(width: 300, height: 400)
                VStack{
                    Image("EvoLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 30)
                    Text("Login")
                        .font(.largeTitle)
                        .padding()
                    TextField("email", text: $username)
                        .padding()
                        .frame(width: 250, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    
                    SecureField("password", text: $password)
                        .padding()
                        .frame(width: 250, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongpassword))
                    
                    Button("Login"){
                        authenticateUser(username: username, password: password)
                    }
                    .foregroundColor(.white)
                    .frame(width: 250, height: 50)
                    .background(Color.green)
                    .cornerRadius(10)
                    
                    NavigationLink(destination: RentalCategoryListView(), isActive: $showingLoginScreen){
                        EmptyView()
                    }
                }
                
            }
        }
        .navigationBarHidden(true)
    }
    func authenticateUser (username: String, password: String){
        if username.lowercased() == "testuser" {
            wrongUsername = 0
            if password.lowercased() == "testpassword" {
                wrongpassword = 0
                showingLoginScreen = true
            } else {
                wrongpassword = 2
            }
        } else {
            wrongUsername = 2
        }
    }
}

struct LandingPageView_Previews: PreviewProvider {
    static var previews: some View {
        LandingPageView()
    }
}
