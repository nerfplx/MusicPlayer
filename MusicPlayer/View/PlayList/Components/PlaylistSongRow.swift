import SwiftUI

struct PlaylistSongRow: View {
    let song: Song
    let index: Int
    let onTap: () -> Void
    
    var body: some View {
        HStack {
            Text("\(index)")
                .font(.caption)
                .foregroundStyle(.white.opacity(0.7))
                .frame(width: 20)
            
            VStack(alignment: .leading) {
                Text(song.title)
                    .font(.subheadline)
                    .foregroundStyle(.white)
                
                Text(song.artist)
                    .font(.caption)
                    .foregroundStyle(.white.opacity(0.7))
            }
            
            Spacer()
            
            Text(song.duration)
                .font(.caption)
                .foregroundStyle(.white.opacity(0.7))
            
            Button(action: {}) {
                Image(systemName: "ellipsis")
                    .foregroundStyle(.white.opacity(0.7))
            }
        }
        .padding(.vertical, 4)
        .listRowBackground(Color.clear)
        .onTapGesture {
            onTap()
        }
    }
}
