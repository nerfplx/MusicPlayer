import SwiftUI

struct Song: Identifiable {
    let id = UUID()
    let title: String
    let artist: String
    let album: String
    let duration: String
    let artwork: String
}
