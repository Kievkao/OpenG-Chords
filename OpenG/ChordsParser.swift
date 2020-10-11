//
//  ChordsParser.swift
//  OpenG
//
//  Created by Andrii Kravchenko on 11.10.20.
//

import Foundation

struct ChordsParser {

}

extension Chord {
    static let am: Chord = Chord(
        name: "Am",
        fretOffset: 0,
        strings: [.disabled, .disabled, .opened, .none, .none],
        jamms: [Jam(string: 0, fret: 1), Jam(string: 1, fret: 0), Jam(string: 2, fret: 1)]
    )
}
