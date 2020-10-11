//
//  GripView.swift
//  OpenG
//
//  Created by Andrii Kravchenko on 11.10.20.
//

import SwiftUI

struct GripView: View {
    private enum Constants {
        static let horizontalPadding: CGFloat = 10.0
    }

    var chord: Chord
    private let strings: [Int] = Array(repeating: 0, count: Configs.stringsNumber)

    var body: some View {
        VStack(alignment: .center) {
            GripHeaderView()
            ForEach(Array(strings.enumerated()), id: \.offset) { index, _ in
                FretView(jams: chord.jamms(forFret: index))
            }
            Spacer()
        }.padding(.horizontal, Constants.horizontalPadding)
    }
}

struct GripView_Previews: PreviewProvider {
    static var previews: some View {
        GripView(chord: Chord.am)
    }
}
