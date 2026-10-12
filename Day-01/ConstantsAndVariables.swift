
import SwiftUI

struct ContentView: View {
    let city = "Coimbatore"
    let initialScore = 10
    let updatedScore = 15

    var body: some View {
        VStack(spacing: 20) {
            Text("Constants and Variables")
                .font(.system(size: 28, weight: .bold))
                .foregroundStyle(.blue)

            Text("City: \(city)")
                .font(.system(size: 24, design: .serif))

            Text("Initial Score: \(initialScore)")
                .font(.system(size: 22, design: .rounded))

            Text("Updated Score: \(updatedScore)")
                .font(.system(size: 22, weight: .bold, design: .monospaced))
                .foregroundStyle(.green)
        }
        .padding()
    }
}
