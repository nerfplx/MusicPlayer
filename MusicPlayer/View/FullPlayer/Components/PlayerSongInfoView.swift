import SwiftUI

struct PlayerSongInfoView: View {
    let title: String
    let artist: String
    
    var body: some View {
        VStack(spacing: 8) {
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            
            Text(artist)
                .font(.subheadline)
                .foregroundStyle(.white.opacity(0.8))
        }
    }
}
