import SwiftUI

struct MiniPlayerView: View {
    @EnvironmentObject var musicPlayer: MusicPlayerViewModel
    @State private var showingFullPlayer = false
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: musicPlayer.currentSong?.artwork ?? "")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.gray.opacity(0.3))
            }
            .frame(width: 50, height: 50)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            
            VStack(alignment: .leading) {
                Text(musicPlayer.currentSong?.title ?? "")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundStyle(.white)
                    .lineLimit(1)
                
                Text(musicPlayer.currentSong?.artist ?? "")
                    .font(.caption)
                    .foregroundStyle(.white.opacity(0.7))
                    .lineLimit(1)
            }
            
            Spacer()
            
            Button(action: {
                musicPlayer.togglePlayPause()
            }) {
                Image(systemName: musicPlayer.isPlaying ? "pause.fill" : "play.fill")
                    .foregroundStyle(.white)
                    .font(.title3)
            }
        }
        .padding()
        .background(.black.opacity(0.7))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding(.horizontal)
        .onTapGesture {
            showingFullPlayer = true
        }
        .fullScreenCover(isPresented: $showingFullPlayer) {
            FullPlayerView()
                .environmentObject(musicPlayer)
        }
    }
}
