
import SwiftUI

struct ContentView: View {
    @State private var number1 = ""
    @State private var number2 = ""
    @State private var result = ""
    @State private var operation = "Addition"

    var body: some View {
        ZStack {
            Color.blue.opacity(0.12)
                .ignoresSafeArea()

            VStack(spacing: 20) {
                Text("Simple Calculator")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.blue)

                TextField("Enter first number", text: $number1)
                    .keyboardType(.decimalPad)
                    .textFieldStyle(.roundedBorder)

                TextField("Enter second number", text: $number2)
                    .keyboardType(.decimalPad)
                    .textFieldStyle(.roundedBorder)

                Picker("Operation", selection: $operation) {
                    Text("Addition").tag("Addition")
                    Text("Subtraction").tag("Subtraction")
                    Text("Multiplication").tag("Multiplication")
                    Text("Division").tag("Division")
                }
                .pickerStyle(.menu)

                Button("Calculate") {
                    if let a = Double(number1),
                       let b = Double(number2) {

                        switch operation {
                        case "Addition":
                            result = "Result: \(a + b)"
                        case "Subtraction":
                            result = "Result: \(a - b)"
                        case "Multiplication":
                            result = "Result: \(a * b)"
                        case "Division":
                            if b != 0 {
                                result = "Result: \(a / b)"
                            } else {
                                result = "Cannot divide by zero"
                            }
                        default:
                            result = "Select an operation"
                        }
                    } else {
                        result = "Enter valid numbers"
                    }
                }
                .buttonStyle(.borderedProminent)

                Text(result)
                    .font(.title2)
                    .bold()
                    .multilineTextAlignment(.center)

                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
