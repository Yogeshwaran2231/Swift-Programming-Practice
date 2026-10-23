
import SwiftUI

struct ContentView: View {
    @State private var mark1 = ""
    @State private var mark2 = ""
    @State private var mark3 = ""
    @State private var mark4 = ""
    @State private var mark5 = ""
    @State private var result = ""

    var body: some View {
        ZStack {
            Color.purple.opacity(0.12)
                .ignoresSafeArea()

            VStack(spacing: 15) {
                Text("Grade Calculator")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.purple)

                TextField("Subject 1 Mark", text: $mark1)
                    .textFieldStyle(.roundedBorder)

                TextField("Subject 2 Mark", text: $mark2)
                    .textFieldStyle(.roundedBorder)

                TextField("Subject 3 Mark", text: $mark3)
                    .textFieldStyle(.roundedBorder)

                TextField("Subject 4 Mark", text: $mark4)
                    .textFieldStyle(.roundedBorder)

                TextField("Subject 5 Mark", text: $mark5)
                    .textFieldStyle(.roundedBorder)

                Button("Calculate Grade") {
                    if let m1 = Double(mark1),
                       let m2 = Double(mark2),
                       let m3 = Double(mark3),
                       let m4 = Double(mark4),
                       let m5 = Double(mark5),
                       [m1, m2, m3, m4, m5].allSatisfy({
                           $0 >= 0 && $0 <= 100
                       }) {

                        let total = m1 + m2 + m3 + m4 + m5
                        let average = total / 5

                        let grade: String

                        if average >= 90 {
                            grade = "A+"
                        } else if average >= 80 {
                            grade = "A"
                        } else if average >= 70 {
                            grade = "B"
                        } else if average >= 60 {
                            grade = "C"
                        } else if average >= 50 {
                            grade = "D"
                        } else {
                            grade = "Fail"
                        }

                        result = """
                        Total: \(total.formatted())
                        Average: \(average.formatted(
                            .number.precision(.fractionLength(2))
                        ))
                        Grade: \(grade)
                        """
                    } else {
                        result = "Enter valid marks (0–100)"
                    }
                }
                .buttonStyle(.borderedProminent)
                .tint(.purple)

                Text(result)
                    .font(.headline)
                    .multilineTextAlignment(.center)

                Spacer(minLength: 0)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
