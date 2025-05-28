import SwiftUI

struct FullPlayerView: View {
    @EnvironmentObject var musicPlayer: MusicPlayerViewModel
    @Environment(\.presentationMode) var presentationMode
    @State private var sliderValue: Double = 0.5
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3954457641, green: 0.5418957472, blue: 0.7458825707, alpha: 1)), Color(#colorLiteral(red: 0.5071080923, green: 0.3913943768, blue: 0.5148633718, alpha: 1)), Color(#colorLiteral(red: 0.3831889927, green: 0.3289074898, blue: 0.4638957381, alpha: 1))]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack(spacing: 30) {
                PlayerHeaderView(presentationMode: presentationMode)
                
                Spacer()
                
                PlayerArtworkView(artworkURL: musicPlayer.currentSong?.artwork)
                
                PlayerSongInfoView(
                    title: musicPlayer.currentSong?.title ?? "",
                    artist: musicPlayer.currentSong?.artist ?? ""
                )
                
                PlayerProgressView(sliderValue: $sliderValue)
                
                PlayerControlsView()
                    .environmentObject(musicPlayer)
                
                PlayerActionsView()
                
                Spacer()
            }
            .padding()
        }
        .navigationBarHidden(true)
    }
}
