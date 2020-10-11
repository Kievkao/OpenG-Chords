//
//  FretView.swift
//  OpenG
//
//  Created by Andrii Kravchenko on 11.10.20.
//

import SwiftUI

struct FretView: View {
    var jams: [Chord.Jam]
    private let strings: [Int] = Array(repeating: 0, count: Configs.stringsNumber)
    
    var body: some View {
        HStack {
            ForEach(strings.enumerated().reversed(), id: \.offset) { index, _ in
                StringView(isJammed: jams.contains { $0.string == index })
                if index > 0 {
                    Spacer()
                }
            }
        }.frame(height: 60.0)
    }
}

struct FretView_Previews: PreviewProvider {
    static var previews: some View {
        FretView(jams: [.init(string: 0, fret: 1), .init(string: 1, fret: 2)])
            .previewLayout(.fixed(width: 320, height: 50))
    }
}
