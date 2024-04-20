//
//  TipKitExampleApp.swift
//  TipKitExample
//
//  Created by Saeid.
//

import SwiftUI
import TipKit

@main
struct TipKitExampleApp: App {

    init() {
        try? Tips.configure()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
