import SwiftUI

@main
struct IfElseApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    @State private var number = 7
    @State private var result = "Click the button"

    var body: some View {
        VStack(spacing: 20) {
            Text("If-Else Example")
                .font(.largeTitle)
                .bold()

            Text("Number: \(number)")
                .font(.title2)

            Text(result)
                .font(.title)
                .foregroundStyle(.blue)

            Button("Check Number") {
                if number % 2 == 0 {
                    result = "Even Number"
                } else {
                    result = "Odd Number"
                }
            }
            .buttonStyle(.borderedProminent)

            Button("Next Number") {
                number += 1
                result = "Click Check Number"
            }
            .buttonStyle(.bordered)
        }
        .padding()
    }
}
