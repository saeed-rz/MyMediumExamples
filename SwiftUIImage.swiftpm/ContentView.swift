import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(.dev)
                .resizable()
                .aspectRatio(contentMode: .fit)

            Image(.dev)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:300, height:200)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.blue, lineWidth: 6)
                )
                .shadow(radius: 10)

            Image(uiImage: UIImage(resource: .dev))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)

        }
    }
}
