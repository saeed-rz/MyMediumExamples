//
//  IndicatorView.swift
//  My Contacts
//
//  Created by Saeid on 01/04/2024.
//

import SwiftUI

struct IndicatorView: View {
    let indicator: String

    var body: some View {
        Text(indicator)
            .foregroundStyle(.black)
            .frame(height: 20)
    }
}

#Preview {
    IndicatorView(indicator: "A")
}
