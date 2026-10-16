
import SwiftUI

struct ContentView: View {
    @State private var selectedDay = 1

    var body: some View {
        ZStack {
            Color.red.opacity(0.18)
                .ignoresSafeArea()

            VStack(spacing: 20) {
                Text("Day Finder")
                    .font(.largeTitle)
                    .bold()

                Text("Select a day number")

                Picker("Day", selection: $selectedDay) {
                    Text("1").tag(1)
                    Text("2").tag(2)
                    Text("3").tag(3)
                    Text("4").tag(4)
                    Text("5").tag(5)
                    Text("6").tag(6)
                    Text("7").tag(7)
                    Text("8").tag(8)
                }
                .pickerStyle(.wheel)
                .frame(height: 120)

                switch selectedDay {
                case 1:
                    Text("Monday")
                case 2:
                    Text("Tuesday")
                case 3:
                    Text("Wednesday")
                case 4:
                    Text("Thursday")
                case 5:
                    Text("Friday")
                case 6:
                    Text("Saturday")
                case 7:
                    Text("Sunday")
                default:
                    Text("Invalid day")
                }
            }
            .font(.title2)
            .padding()
        }
    }
}
