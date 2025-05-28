import SwiftUI

struct DiscoverHeaderView: View {
    var body: some View {
        HStack {
            Text("Discover")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.white)
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(.white)
                    .font(.title2)
            }
        }
        .padding(.horizontal)
    }
}
