import SwiftUI

struct ArtistCollectionSection: View {
    @EnvironmentObject var musicPlayer: MusicPlayerViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Collection of Artist")
                    .font(.headline)
                    .foregroundStyle(.white)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundStyle(.white.opacity(0.7))
            }
            .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(musicPlayer.artists) { artist in
                        ArtistCardView(artist: artist)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}
