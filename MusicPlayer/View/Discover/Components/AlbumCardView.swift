import SwiftUI

struct AlbumCardView: View {
    let album: Album
    
    var body: some View {
        VStack(alignment: .leading) {
            AsyncImage(url: URL(string: album.artwork)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                RoundedRectangle(cornerRadius: 8)
                    .fill(.white.opacity(0.3))
            }
            .frame(width: 100, height: 100)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            
            Text(album.title)
                .font(.caption)
                .fontWeight(.medium)
                .foregroundStyle(.white)
                .lineLimit(1)
            
            Text(album.artist)
                .font(.caption2)
                .foregroundStyle(.white.opacity(0.7))
        }
        .frame(width: 100)
    }
}
