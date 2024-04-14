//
//  String+Extensions.swift
//  My Contacts
//
//  Created by Saeid on 01/04/2024.
//

import Foundation

extension String {
    var randomString: String {
        let letters = "abcdefghijklmnopqrstuvwxyz"
        return String((1..<6).map{ _ in letters.randomElement()! })
    }
}
