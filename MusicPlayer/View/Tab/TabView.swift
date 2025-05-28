import SwiftUI

struct TabView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        HStack {
            TabBarItem(icon: "house", title: "Discover", tag: 0, selectedTab: $selectedTab)
            TabBarItem(icon: "square.stack", title: "Library", tag: 1, selectedTab: $selectedTab)
            TabBarItem(icon: "music.note.list", title: "Playlist", tag: 2, selectedTab: $selectedTab)
            TabBarItem(icon: "person", title: "Account", tag: 3, selectedTab: $selectedTab)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .frame(height: 50)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2018593005, green: 0.2791152144, blue: 0.3872143301, alpha: 1)), Color(#colorLiteral(red: 0.5071080923, green: 0.3913943768, blue: 0.5148633718, alpha: 1)), Color(#colorLiteral(red: 0.2018593005, green: 0.2791152144, blue: 0.3872143301, alpha: 1))]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea(edges: .bottom)
        )
        .overlay(
            Rectangle()
                .frame(height: 1)
                .foregroundStyle(.gray)
                .frame(maxHeight: .infinity, alignment: .top),
            alignment: .top
        )
    }
}
