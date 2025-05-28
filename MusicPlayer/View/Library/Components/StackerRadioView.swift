import SwiftUI

struct StackerRadioView: View {
    var body: some View {
        HStack {
            Button(action: {}) {
                Image(systemName: "play.fill")
                    .foregroundStyle(.white)
                    .font(.title3)
            }
            Text("Stacker Radio")
                .foregroundStyle(.white)
                .fontWeight(.medium)
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "arrow.up.arrow.down")
                    .foregroundStyle(.white)
                    .font(.caption)
            }
        }
        .padding()
        .background(Color.white.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding(.horizontal)
    }
}
