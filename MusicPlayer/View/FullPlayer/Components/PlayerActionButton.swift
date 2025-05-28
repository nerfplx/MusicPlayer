import SwiftUI

struct PlayerActionButton: View {
    let iconName: String
    let action: (() -> Void)?
    
    init(iconName: String, action: (() -> Void)? = nil) {
        self.iconName = iconName
        self.action = action
    }
    
    var body: some View {
        Button(action: action ?? {}) {
            Image(systemName: iconName)
                .font(.title3)
                .foregroundStyle(.white)
        }
    }
}
