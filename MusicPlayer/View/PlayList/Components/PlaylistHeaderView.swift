import SwiftUI

struct PlaylistHeaderView: View {
    var presentationMode: Binding<PresentationMode>
    let title: String
    
    var body: some View {
        HStack {
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "chevron.left")
                    .foregroundStyle(.white)
                    .font(.title2)
            }
            
            Spacer()
            
            Text(title)
                .font(.headline)
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "chevron.right")
                    .foregroundStyle(.white)
                    .font(.title2)
            }
        }
        .padding()
    }
}
