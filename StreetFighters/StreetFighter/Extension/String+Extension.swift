//
//  String+Extension.swift
//  StreetFighter
//
//  Created by David Da Silva on 29/04/2021.
//

import Foundation

extension String {
    var keepLettersOnly: String {
        return String(unicodeScalars.filter(CharacterSet.letters.contains))
    }
}
