//
//  StringView.swift
//  OpenG
//
//  Created by Andrii Kravchenko on 11.10.20.
//

import SwiftUI

struct StringView: View {
    private enum Constants {
        static let stringWidth: CGFloat = 5.0
        static let jamDotDiameter: CGFloat = 20.0
    }

    var isJammed: Bool

    var body: some View {
        ZStack {
            Color.black
                .frame(width: Constants.stringWidth)
                Circle()
                    .fill(isJammed ? Color.black : Color.clear)
                    .frame(width: Constants.jamDotDiameter, height: Constants.jamDotDiameter)
        }
    }
}

struct StringView_Previews: PreviewProvider {
    static var previews: some View {
        StringView(isJammed: true)
            .previewLayout(.fixed(width: 50, height: 50))
        StringView(isJammed: false)
            .previewLayout(.fixed(width: 50, height: 50))
    }
}
