import SwiftUI

struct PlaylistInfoView: View {
    var body: some View {
        VStack(spacing: 16) {
            PlaylistCoverView()
            
            Text("Hans Zimmer")
                .font(.subheadline)
                .foregroundStyle(.white.opacity(0.8))
        }
    }
}
