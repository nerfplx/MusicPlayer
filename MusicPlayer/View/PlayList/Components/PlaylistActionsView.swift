import SwiftUI

struct PlaylistActionsView: View {
    var body: some View {
        HStack(spacing: 40) {
            PlaylistActionButton(iconName: "quote.bubble")
            PlaylistActionButton(iconName: "heart")
            PlaylistActionButton(iconName: "arrow.down.circle")
            PlaylistActionButton(iconName: "square.and.arrow.up")
        }
        .padding()
    }
}
