
import SwiftUI

struct ContentView: View {
    @State private var mark1 = 85
    @State private var mark2 = 90
    @State private var mark3 = 78

    var total: Int {
        mark1 + mark2 + mark3
    }

    var average: Double {
        Double(total) / 3.0
    }

    var grade: String {
        if average >= 90 {
            return "A Grade"
        } else if average >= 75 {
            return "B Grade"
        } else if average >= 50 {
            return "C Grade"
        } else {
            return "Fail"
        }
    }

    var body: some View {
        VStack(spacing: 20) {
            Text("Student Grade Calculator")
                .font(.title)
                .bold()

            Text("Subject 1: \(mark1)")
            Text("Subject 2: \(mark2)")
            Text("Subject 3: \(mark3)")

            Divider()

            Text("Total Marks: \(total)")
            Text("Average: \(average, specifier: "%.1f")")
            Text("Grade: \(grade)")
                .font(.title2)
                .bold()

            Button("Add 5 Marks to Subject 1") {
                mark1 = min(mark1 + 5, 100)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}
