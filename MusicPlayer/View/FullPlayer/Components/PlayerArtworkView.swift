import SwiftUI

struct PlayerArtworkView: View {
    let artworkURL: String?
    
    var body: some View {
        AsyncImage(url: URL(string: artworkURL ?? "")) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
        } placeholder: {
            RoundedRectangle(cornerRadius: 20)
                .fill(.white.opacity(0.3))
        }
        .frame(width: 300, height: 300)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(radius: 20)
    }
}
