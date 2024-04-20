//
//  ContentView.swift
//  TipKitExample
//
//  Created by Saeid.
//

import SwiftUI
import TipKit

struct ContentView: View {
    @State var message = "Hello, world!"

    var body: some View {
        VStack {
            Text(message)
            Button("Simple button") {
                message = "Huurrraaay!"
            }
            .popoverTip(SimpleTip())
            // Inline style
//            TipView(SimpleTip(),arrowEdge: .top)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
