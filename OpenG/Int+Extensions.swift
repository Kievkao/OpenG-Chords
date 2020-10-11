//
//  Int+Extensions.swift
//  OpenG
//
//  Created by Andrii Kravchenko on 11.10.20.
//

import Foundation

extension Int {

    func toRoman() -> String {

        let romanValues = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
        let arabicValues = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]

        var romanValue = ""
        var startingValue = self

        for (index, romanChar) in romanValues.enumerated() {
            let arabicValue = arabicValues[index]

            let div = startingValue / arabicValue

            if (div > 0) {
                for _ in 0..<div {
                    romanValue += romanChar
                }
                startingValue -= arabicValue * div
            }
        }

        return romanValue
    }
}
