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
    
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var viewModel: AuthViewModel
    
    
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
                    .frame(maxWidth: .infinity, maxHeight: 490)
                    .padding(.horizontal, 20)
                    //.shadow(color: (Color(red: 0, green: 0, blue: 0, opacity: 0.4)), radius: 5, x:5, y: 5)
                VStack{
                    
                    //Image and Title
                    Image("EvoLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 125, height: 100)
                        .offset(y: -20)
//                    Text("Login")
//                        .font(.largeTitle)
//                        .padding()
                    
                    //Imput Fields
                    ZStack(alignment: .leading){
                        if !email.isEmpty {
                            if email.contains("@"){
                                
                            }else{
                                Text("invalid email address")
                                    .padding([.top, .leading, . trailing])
                                    .font(.footnote)
                                    .foregroundStyle(.red)
                                    .offset(y: -45)
                            }
                        }
                        InputView(text: $email,
                                  title: "Email Address",
                                  placeholder: "Email Address")
                        .padding(.bottom)
                    }
                    
                    ZStack(alignment: .leading){
                        if !password.isEmpty {
                            if email.contains("@"){
                                
                            }else{
                                Text("invalid email address")
                                    .padding([.top, .leading, . trailing])
                                    .font(.footnote)
                                    .foregroundStyle(.red)
                                    .offset(y: -45)
                            }
                        }
                        InputView(text: $password,
                                  title: "Password",
                                  placeholder: "Password",
                                  isSecureField: true)
                        .padding(.vertical)
                    }
                    
                    Button{
                        Task{
                            try await viewModel.signIn(withEmail: email, password: password)
                        }
                    } label:{
                        Text("Login")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, maxHeight: 50)
                    }
                    .background(formIsValid ? Color.green : Color.gray)
                    .disabled(!formIsValid)
                    .cornerRadius(30)
                    .shadow(color: (Color(red: 0, green: 0, blue: 0, opacity: 0.4)), radius: 5, x:5, y: 5)
                    .padding(.top)
                    
                    NavigationLink{
                        RegistrationView()
                            .navigationBarBackButtonHidden(true)
                    } label:{
                        HStack{
                            Text("Don't have an account?")
                                .foregroundStyle(.gray)
                            Text("Sign up")
                                .foregroundStyle(.black)
                                .fontWeight(.bold)
                                .underline()
                        }
                    }
                    .padding(.top, 35)
                    
                }
                .padding(.horizontal, 40)
                
            }
        }
        .navigationBarHidden(true)
    }
}

extension LandingPageView: AuthenicationFormProtocol{
    var formIsValid: Bool {
        return !email.isEmpty
        && email.contains("@")
        && !password.isEmpty
        && password.count > 5
    }
}
struct LandingPageView_Previews: PreviewProvider {
    static var previews: some View {
        LandingPageView()
    }
}
