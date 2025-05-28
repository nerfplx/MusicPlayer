import SwiftUI

struct PlaylistSongsView: View {
    @EnvironmentObject var musicPlayer: MusicPlayerViewModel
    
    var body: some View {
        List {
            ForEach(Array(musicPlayer.playlist.enumerated()), id: \.element.id) { index, song in
                PlaylistSongRow(
                    song: song,
                    index: index + 1,
                    onTap: {
                        musicPlayer.playSong(song)
                    }
                )
            }
        }
        .listStyle(PlainListStyle())
        .background(Color.clear)
    }
}
