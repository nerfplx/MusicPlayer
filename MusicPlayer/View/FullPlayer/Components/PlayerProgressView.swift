import SwiftUI

struct PlayerProgressView: View {
    @Binding var sliderValue: Double
    let currentTime: String
    let totalTime: String
    
    init(sliderValue: Binding<Double>, currentTime: String = "2:49", totalTime: String = "6:28") {
        self._sliderValue = sliderValue
        self.currentTime = currentTime
        self.totalTime = totalTime
    }
    
    var body: some View {
        VStack(spacing: 8) {
            Slider(value: $sliderValue, in: 0...1)
                .foregroundStyle(.white)
            
            HStack {
                Text(currentTime)
                    .font(.caption)
                    .foregroundStyle(.white.opacity(0.7))
                
                Spacer()
                
                Text(totalTime)
                    .font(.caption)
                    .foregroundStyle(.white.opacity(0.7))
            }
        }
        .padding(.horizontal)
    }
}
