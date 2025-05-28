import SwiftUI

struct LibraryHeaderView: View {
    var body: some View {
        HStack {
            Text("Library")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.white)
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "bell")
                    .foregroundStyle(.white)
                    .font(.title2)
            }
        }
        .padding(.horizontal)
    }
}
