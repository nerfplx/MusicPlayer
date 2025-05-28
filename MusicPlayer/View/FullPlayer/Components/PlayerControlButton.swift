import SwiftUI

struct PlayerControlButton: View {
    let iconName: String
    let size: ButtonSize
    let action: () -> Void
    
    enum ButtonSize {
        case small, medium, large
        
        var fontSize: CGFloat {
            switch self {
            case .small: return 20
            case .medium: return 24
            case .large: return 50
            }
        }
    }
    
    var body: some View {
        Button(action: action) {
            Image(systemName: iconName)
                .font(.system(size: size.fontSize))
                .foregroundStyle(.white)
        }
    }
}
