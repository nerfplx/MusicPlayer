import SwiftUI

struct LibraryView: View {
    @EnvironmentObject var musicPlayer: MusicPlayerViewModel
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2018593005, green: 0.2791152144, blue: 0.3872143301, alpha: 1)), Color(#colorLiteral(red: 0.5071080923, green: 0.3913943768, blue: 0.5148633718, alpha: 1)), Color(#colorLiteral(red: 0.2018593005, green: 0.2791152144, blue: 0.3872143301, alpha: 1))]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        LibraryHeaderView()
                        StackerRadioView()
                        QuickAccessView()
                        FavoriteAlbumsSection()
                        ArtistCollectionSection()
                        Spacer(minLength: 100)
                    }
                }
            }
        }
        .navigationBarHidden(true)
    }
}
