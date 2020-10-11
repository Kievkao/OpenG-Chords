//
//  Chord.swift
//  OpenG
//
//  Created by Andrii Kravchenko on 11.10.20.
//

import Foundation

struct Chord {
    let name: String
    let fretOffset: Int
    let strings: [StringState]
    let jamms: [Jam]

    var firstFretMark: String? {
        guard fretOffset > 2 else {
            return nil
        }
        return fretOffset.toRoman()
    }

    func jamms(forFret fret: Int) -> [Jam] {
        return jamms.filter { $0.fret == fret }
    }
}

extension Chord {
    struct Jam {
        let string: Int
        let fret: Int
    }

    enum StringState {
        case opened
        case disabled
        case none
    }
}
