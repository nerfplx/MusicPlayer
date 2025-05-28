import SwiftUI

struct PlaylistCoverView: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://picsum.photos/200/200")) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
        } placeholder: {
            RoundedRectangle(cornerRadius: 16)
                .fill(.white.opacity(0.3))
        }
        .frame(width: 200, height: 200)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}
