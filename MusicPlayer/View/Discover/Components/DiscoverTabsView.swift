import SwiftUI

struct DiscoverTabsView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack(spacing: 30) {
                VStack {
                    Text("Film Score")
                        .foregroundStyle(.white)
                        .fontWeight(.medium)
                }
                
                Text("Musical Theatre")
                    .foregroundStyle(.white.opacity(0.7))
                
                Text("Video Game")
                    .foregroundStyle(.white.opacity(0.7))
            }
            .padding(.horizontal)
        }
    }
}
