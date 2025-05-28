import SwiftUI

struct PlayerActionsView: View {
    var body: some View {
        HStack(spacing: 60) {
            PlayerActionButton(iconName: "quote.bubble")
            PlayerActionButton(iconName: "heart")
            PlayerActionButton(iconName: "arrow.down.circle")
            PlayerActionButton(iconName: "square.and.arrow.up")
        }
    }
}
