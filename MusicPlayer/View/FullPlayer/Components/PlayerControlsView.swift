import SwiftUI

struct PlayerControlsView: View {
    @EnvironmentObject var musicPlayer: MusicPlayerViewModel
    
    var body: some View {
        HStack(spacing: 50) {
            PlayerControlButton(iconName: "backward.fill", size: .medium) {
            }
            
            PlayerControlButton(
                iconName: musicPlayer.isPlaying ? "pause.fill" : "play.fill",
                size: .large
            ) {
                musicPlayer.togglePlayPause()
            }
            
            PlayerControlButton(iconName: "forward.fill", size: .medium) {
            }
        }
    }
}
