import SwiftUI

class MusicPlayerViewModel: ObservableObject {
    @Published var currentSong: Song?
    @Published var isPlaying = false
    @Published var currentTime: Double = 149
    @Published var duration: Double = 388
    
    let albums: [Album] = [
        Album(title: "Game Of Thrones", artist: "Ramin Djawadi", artwork: "https://picsum.photos/120/120?random=1"),
        Album(title: "Blade Runner", artist: "Hans Zimmer", artwork: "https://picsum.photos/120/120?random=2"),
        Album(title: "Dune Interstellar", artist: "Hans Zimmer", artwork: "https://picsum.photos/120/120?random=3")
    ]
    
    let favoriteAlbums: [Album] = [
        Album(title: "Furious 7", artist: "Various Artists", artwork: "https://picsum.photos/120/120?random=4"),
        Album(title: "Final Fantasy", artist: "Nobuo Uematsu", artwork: "https://picsum.photos/120/120?random=5"),
        Album(title: "Fifty Shades", artist: "Various Artists", artwork: "https://picsum.photos/120/120?random=6")
    ]
    
    let artists: [Artist] = [
        Artist(name: "Hans Zimmer", image: "https://picsum.photos/80/80?random=7"),
        Artist(name: "Ramin Djawadi", image: "https://picsum.photos/80/80?random=8"),
        Artist(name: "John Williams", image: "https://picsum.photos/80/80?random=9")
    ]
    
    let playlist: [Song] = [
        Song(title: "The Mole", artist: "Hans Zimmer", album: "Dunkirk", duration: "5:41", artwork: "https://picsum.photos/300/300?random=10"),
        Song(title: "We Need Our Army Back", artist: "Hans Zimmer", album: "Dunkirk", duration: "6:28", artwork: "https://picsum.photos/300/300?random=11"),
        Song(title: "Shivering Soldier", artist: "Hans Zimmer", album: "Dunkirk", duration: "5:03", artwork: "https://picsum.photos/300/300?random=12"),
        Song(title: "Supermarine", artist: "Hans Zimmer", album: "Dunkirk", duration: "7:59", artwork: "https://picsum.photos/300/300?random=13"),
        Song(title: "The Tide", artist: "Hans Zimmer", album: "Dunkirk", duration: "4:45", artwork: "https://picsum.photos/300/300?random=14"),
        Song(title: "Regimental Brothers", artist: "Hans Zimmer", album: "Dunkirk", duration: "3:27", artwork: "https://picsum.photos/300/300?random=15"),
        Song(title: "Impulse", artist: "Hans Zimmer", album: "Dunkirk", duration: "5:12", artwork: "https://picsum.photos/300/300?random=16"),
        Song(title: "Home", artist: "Hans Zimmer & Benjamin Wallfisch", album: "Dunkirk", duration: "6:33", artwork: "https://picsum.photos/300/300?random=17")
    ]
    
    init() {
        currentSong = playlist[1] 
    }
    
    func playSong(_ song: Song) {
        currentSong = song
        isPlaying = true
    }
    
    func togglePlayPause() {
        isPlaying.toggle()
    }
}
