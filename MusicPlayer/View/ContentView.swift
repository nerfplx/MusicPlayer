import SwiftUI
import AVFoundation

struct ContentView: View {
    @StateObject private var musicPlayer = MusicPlayerViewModel()
    @State private var selectedTab = 0
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(spacing: 0) {
                       Group {
                           switch selectedTab {
                           case 0: DiscoverView()
                           case 1: LibraryView()
                           case 2: PlaylistView()
                           case 3: Text("Account")
                           default: Text("Unknown")
                           }
                       }
                       TabView(selectedTab: $selectedTab)
                   }
            
            if musicPlayer.currentSong != nil {
                MiniPlayerView()
                    .environmentObject(musicPlayer)
                    .padding(.bottom, 60)
            }
        }
        .environmentObject(musicPlayer)
    }
}

#Preview {
    ContentView()
}
