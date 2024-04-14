//
//  My_ContactsApp.swift
//  My Contacts
//
//  Created by Saeid on 01/04/2024.
//

import SwiftUI

@main
struct MyContactsApp: App {
    private var contacts: [String] = []

    init() {
        for _ in 0...40 {
            contacts.append("".randomString)
        }
        contacts.sort()
    }
    var body: some Scene {
        WindowGroup {
            ContactsView(contacts: contacts)
        }
    }
}
