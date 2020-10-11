//
//  StringView.swift
//  OpenG
//
//  Created by Andrii Kravchenko on 11.10.20.
//

import SwiftUI

struct StringView: View {
    var isJammed: Bool

    var body: some View {
        ZStack {
            Color.black
                .frame(width: 5)
            if isJammed {
                Circle()
                    .fill(Color.black)
                    .frame(width: 15, height: 15)
            }
        }
    }
}

struct StringView_Previews: PreviewProvider {
    static var previews: some View {
        StringView(isJammed: true)
        StringView(isJammed: false)
    }
}
