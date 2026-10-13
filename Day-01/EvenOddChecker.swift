import SwiftUI

 struct ContentView: View {
    @State private var number = 7

    var body: some View {
        VStack(spacing: 20) {
          Text("Even or odd checker")
          .font(.title)
          .fontWeight(.bold)

          Text("Number: \(number)")
          .font(.title2)

          if number % 2 == 0 {
            Text("Even Number")
            .foregroundStyle(.green)
          } else {
            Text("odd number")
            .foregroundStyle(.red)
          }
          Button("check Next Number") {
            number += 1
          }
          .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}
