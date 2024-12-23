import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            InputFormView()
        }
    }
}

@main
struct ValueCalculatorApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
