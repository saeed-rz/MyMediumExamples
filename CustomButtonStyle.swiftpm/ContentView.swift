import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Press Me") {
                // Button action
            }
            .buttonStyle(CapsuleButtonStyle())
        }
    }
}

struct CapsuleButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: 10).fill(.blue))
            .clipShape(Capsule())
    }
}
