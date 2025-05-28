import SwiftUI

struct ArtistCardView: View {
    let artist: Artist
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: artist.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Circle()
                    .fill(.white.opacity(0.3))
            }
            .frame(width: 80, height: 80)
            .clipShape(Circle())
            
            Text(artist.name)
                .font(.caption)
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
        }
        .frame(width: 80)
    }
}
