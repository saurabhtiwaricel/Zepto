
import SwiftUI

struct SwiftUIView: View {
    @State private var timeRemaining = 30  // 30 seconds countdown
        @State private var timerRunning = false
        @State private var timer: Timer? = nil

        var body: some View {
            VStack(spacing: 20) {
                // Display Countdown Timer
                Text("\(formattedTime)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(timeRemaining > 0 ? .black : .red)
                
                // Start Button
                Button(action: startTimer) {
                    Text(timerRunning ? "Counting..." : "Start 30s Timer")
                        .padding()
                        .frame(width: 200)
                        .background(timerRunning ? Color.gray : Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .disabled(timerRunning) // Disable while timer is running
            }
            .padding()
        }
        
        // Computed property to format time as "00:30"
        private var formattedTime: String {
            let minutes = timeRemaining / 60
            let seconds = timeRemaining % 60
            return String(format: "%02d:%02d", minutes, seconds)
        }
        
        // Start the timer
        private func startTimer() {
            timeRemaining = 30
            timerRunning = true

            timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
                if timeRemaining > 0 {
                    timeRemaining -= 1
                } else {
                    timer?.invalidate()
                    timerRunning = false
                }
            }
        }
}
#Preview {
    SwiftUIView()
}

