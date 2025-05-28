import SwiftUI

struct FavoriteAlbumsSection: View {
    @EnvironmentObject var musicPlayer: MusicPlayerViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Favourite Albums")
                    .font(.headline)
                    .foregroundStyle(.white)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundStyle(.white.opacity(0.7))
            }
            .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(musicPlayer.favoriteAlbums) { album in
                        AlbumCardView(album: album)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}
