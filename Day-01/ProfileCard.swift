
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.circle.fill")
                .font(.system(size: 80))
                .foregroundStyle(.blue)

            Text("Yogesh")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("Computer Science Engineer")
                .font(.headline)
                .foregroundStyle(.secondary)

            Text("Passionate about coding and technology.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal)

            HStack(spacing: 12) {
                Label("Swift", systemImage: "swift")
                Label("Learning", systemImage: "book.fill")
            }
            .font(.subheadline)
            .foregroundStyle(.blue)
        }
        .padding(30)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemGroupedBackground))
    }
}
