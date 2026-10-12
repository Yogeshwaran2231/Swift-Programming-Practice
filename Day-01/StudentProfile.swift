
import SwiftUI

struct ContentView: View {
    let studentName = "Asha"
    let rollNumber: Int = 2301
    let initialSemester = 5
    let initialCGPA: Double = 8.4
    let isHosteller = true

    var body: some View {
        VStack(spacing: 18) {
            Text("Student Profile")
                .font(.system(size: 28, weight: .bold))
                .foregroundStyle(.blue)

            Text("Name: \(studentName)")
                .font(.system(size: 22, design: .serif))
                .foregroundStyle(.red)

            Text("Roll Number: \(rollNumber)")
                .font(.system(size: 20, design: .rounded))

            Text("Initial Semester: \(initialSemester)")
                .font(.system(size: 20))

            Text("Initial CGPA: \(initialCGPA, specifier: "%.1f")")
                .font(.system(size: 20, design: .monospaced))

            Text("Hosteller: \(isHosteller ? "Yes" : "No")")
                .font(.system(size: 20))

            Divider()

            Text("Updated Student Details")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.blue)

            Text("Semester: \(initialSemester + 1)")
                .font(.system(size: 22, weight: .semibold))
                .foregroundStyle(.green)

            Text("CGPA: \(initialCGPA + 0.2, specifier: "%.1f")")
                .font(.system(size: 22, weight: .semibold))
                .foregroundStyle(.green)
        }
        .padding(24)
    }
}
