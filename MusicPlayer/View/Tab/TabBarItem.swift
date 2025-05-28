import SwiftUI

struct TabBarItem: View {
    let icon: String
    let title: String
    let tag: Int
    @Binding var selectedTab: Int
    
    var body: some View {
        Button(action: {
            selectedTab = tag
        }) {
            VStack {
                Image(systemName: icon)
                    .font(.title3)
                    .bold()
                Text(title)
                    .font(.caption)
            }
            .foregroundStyle(selectedTab == tag ? .orange.opacity(0.7) : .gray)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.top, 24)
        }
    }
}
