//
//  ContactsView.swift
//  My Contacts
//
//  Created by Saeid on 01/04/2024.
//

import SwiftUI

struct ContactsView: View {
    
    let contacts: [String]

    var body: some View {
        ScrollViewReader { proxy in
            List(contacts, id: \.self) { contact in
                Text(contact)
                    .id(contact.first!.uppercased())
            }
            .scrollIndicators(.hidden)
            .padding(.trailing)
            .overlay(alignment: .top) {
                ScrollIndicatorView(
                    indicators: Set(contacts.map { $0.first!.uppercased() })
                ) {
                    proxy.scrollTo($0)
                }
                .padding(.top, 16)
            }
        }
    }
}

#Preview {
    ContactsView(contacts: ["".randomString, "".randomString])
}
