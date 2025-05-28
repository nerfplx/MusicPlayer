import SwiftUI

struct QuickAccessView: View {
    var body: some View {
        HStack {
            Spacer()
            VStack(spacing: 6) {
                Image(systemName: "folder")
                    .font(.title)
                Text("Local")
                    .font(.caption)
            }
            Spacer()
            VStack(spacing: 6) {
                Image(systemName: "clock")
                    .font(.title)
                Text("Recent")
                    .font(.caption)
            }
            Spacer()
            VStack(spacing: 6) {
                Image(systemName: "icloud")
                    .font(.title)
                Text("Offline")
                    .font(.caption)
            }
            Spacer()
        }
        .foregroundStyle(.white)
        .opacity(0.7)
    }
}
