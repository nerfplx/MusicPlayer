import SwiftUI

struct PlaylistView: View {
    @EnvironmentObject var musicPlayer: MusicPlayerViewModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2018593005, green: 0.2791152144, blue: 0.3872143301, alpha: 1)), Color(#colorLiteral(red: 0.5071080923, green: 0.3913943768, blue: 0.5148633718, alpha: 1))]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack {
                PlaylistHeaderView(presentationMode: presentationMode, title: "Dunkirk (Original Motion Picture Soundtrack)")
                
                PlaylistInfoView()
                
                PlaylistActionsView()
                
                PlaylistSongsView()
                    .environmentObject(musicPlayer)
            }
        }
        .navigationBarHidden(true)
    }
}
