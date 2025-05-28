import SwiftUI

struct RecommendedPlaylistSection: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Recommend Playlist")
                    .font(.headline)
                    .foregroundStyle(.white)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundStyle(.white.opacity(0.7))
            }
            .padding(.horizontal)
            
            HStack {
                AsyncImage(url: URL(string: "https://picsum.photos/50/50")) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    Circle()
                        .fill(Color.white.opacity(0.3))
                }
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text("Manchester by The Sea")
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .foregroundStyle(.white)
                    
                    Text("Lesley Barber")
                        .font(.caption)
                        .foregroundStyle(.white.opacity(0.7))
                }
                
                Spacer()
            }
            .padding(.horizontal)
        }
    }
}
