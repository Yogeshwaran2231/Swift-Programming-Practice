
import SwiftUI

struct ContentView: View {
    @State private var height = ""
    @State private var weight = ""
    @State private var result = ""

    var body: some View {
        ZStack {
            Color.green.opacity(0.12)
                .ignoresSafeArea()

            VStack(spacing: 20) {
                Text("BMI Calculator")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.green)

                TextField("Height in cm", text: $height)
                    .keyboardType(.decimalPad)
                    .textFieldStyle(.roundedBorder)

                TextField("Weight in kg", text: $weight)
                    .keyboardType(.decimalPad)
                    .textFieldStyle(.roundedBorder)

                Button("Calculate BMI") {
                    if let h = Double(height),
                       let w = Double(weight),
                       h > 0, w > 0 {

                        let heightInMeters = h / 100
                        let bmi = w / (heightInMeters * heightInMeters)

                        result = String(format: "Your BMI: %.1f", bmi)
                    } else {
                        result = "Enter valid height and weight"
                    }
                }
                .buttonStyle(.borderedProminent)
                .tint(.green)

                Text(result)
                    .font(.title3)
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
