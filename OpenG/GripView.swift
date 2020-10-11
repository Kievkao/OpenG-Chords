//
//  GripView.swift
//  OpenG
//
//  Created by Andrii Kravchenko on 11.10.20.
//

import SwiftUI

struct GripView: View {
    var chord: Chord = Chord.am

    var body: some View {
        VStack(alignment: .center) {
            GripHeaderView()
            FretView(jams: chord.jamms(forFret: 0))
            FretView(jams: chord.jamms(forFret: 1))
            FretView(jams: chord.jamms(forFret: 2))
            FretView(jams: chord.jamms(forFret: 3))
            FretView(jams: chord.jamms(forFret: 4))
            Spacer()
        }
    }
}

struct GripView_Previews: PreviewProvider {
    static var previews: some View {
        GripView()
    }
}
