//
//  SimpleTip.swift
//  TipKitExample
//
//  Created by Saeid.
//

import TipKit

struct SimpleTip: Tip {
    var title: Text {
        Text("Did you know you can tap on me?")
    }

    var message: Text? {
        Text("Press me to trigger an action")
    }

    var image: Image? {
        Image(systemName: "info.bubble")
    }
}
