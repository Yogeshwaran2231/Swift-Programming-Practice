import SwiftUI

/// The root view of MiniSwift Studio's sample app.
struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)

            Text("Hello, world!")
        }
        .padding()
    }
}
