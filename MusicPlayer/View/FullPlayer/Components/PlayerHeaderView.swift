import SwiftUI

struct PlayerHeaderView: View {
    var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        HStack {
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "chevron.down")
                    .foregroundStyle(.white)
                    .font(.title2)
            }
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "ellipsis")
                    .foregroundStyle(.white)
                    .font(.title2)
            }
        }
        .padding(.horizontal)
    }
}
