
import SwiftUI

struct ContentView: View {
    @State private var task = ""
    @State private var tasks: [String] = []

    var body: some View {
        ZStack {
            Color.blue.opacity(0.1)
                .ignoresSafeArea()

            VStack(spacing: 20) {
                Text("My To-Do List")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.blue)

                HStack {
                    TextField("Enter a task", text: $task)
                        .textFieldStyle(.roundedBorder)

                    Button("Add") {
                        if !task.isEmpty {
                            tasks.append(task)
                            task = ""
                        }
                    }
                    .buttonStyle(.borderedProminent)
                }

                List {
                    ForEach(tasks, id: \.self) { item in
                        Text(item)
                    }
                    .onDelete { indexSet in
                        tasks.remove(atOffsets: indexSet)
                    }
                }
                .scrollContentBackground(.hidden)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
