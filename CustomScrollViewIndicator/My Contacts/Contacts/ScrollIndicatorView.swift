//
//  ScrollIndicatorView.swift
//  My Contacts
//
//  Created by Saeid on 01/04/2024.
//

import SwiftUI

struct ScrollIndicatorView: View {
    let indicators: Set<String>
    let onTap: (String) -> Void

    var body: some View {
        HStack {
            Spacer()

            VStack {
                ForEach(indicators.sorted(), id: \.self) { contact in
                    Button {
                        onTap(contact)
                    } label: {
                        IndicatorView(indicator: contact)
                    }
                }
            }
            .padding(.trailing, 8)
        }
    }
}

#Preview {
    ScrollIndicatorView(indicators: ["A"]) { contact in

    }
}
