
import SwiftUI

enum BookStatus {
    case available
    case borrowed(by: String, dueIns: Int)
    case reserved(for: String)

    var label: String {
        switch self {
        case .available:
            return "Available"
        case .borrowed(let name, let days):
            return "Borrowed by \(name), due in \(days) days"
        case .reserved(let name):
            return "Reserved for \(name)"
        }
    }
}

struct Book {
    var title: String
    var status: BookStatus = .available
}

class Member: ObservableObject {
    @Published var name: String
    var borrowedBooks: [String]

    init(name: String, borrowedBooks: [String] = []) {
        self.name = name
        self.borrowedBooks = borrowedBooks
    }
}

struct ContentView: View {
    @State private var book1 = Book(title: "Swift Basics")
    @State private var book2 = Book(title: "Swift Basics")
    @StateObject private var member1 = Member(name: "Priya")

    var body: some View {
        VStack(spacing: 16) {
            Text("Library Item Model")
                .font(.title)
                .fontWeight(.bold)

            Divider()

            Text("Struct: Book")
                .font(.headline)

            Text("Book 1: \(book1.status.label)")
            Text("Book 2: \(book2.status.label)")

            Button("Borrow Book 2") {
                book2.status = .borrowed(by: "Arun", dueIns: 5)
            }
            .buttonStyle(.borderedProminent)

            Divider()

            Text("Class: Member")
                .font(.headline)

            Text("Member 1: \(member1.name)")
            Text("Member 2: \(member1.name)")

            Button("Change Member Name") {
                member1.name = "Kavya"
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}
