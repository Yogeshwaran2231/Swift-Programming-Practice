import SwiftUI

struct ContentView: View {
    let number1 = 20
    let number2 = 5

    var body: some View {
        VStack(spacing: 15){
            Text("operators and calculation")
            .font(.title)
            .bold()

            Text("number1: \(number1)")
            Text("number2: \(number2)")

            Divider()

            Text("Addition: \(number1 + number2)")
            Text("subtraction: \(number1 - number2)")
            Text("multiplication: \(number1 * number2)")
            Text("multiplication: \(number1 / number2)")
            Text("remainder: \(number1 % number2)")
        }
        .font(.title3)
        .padding()
    }
}
