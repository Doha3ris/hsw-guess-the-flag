//
//  3x3View.swift
//  GuessTheFlag
//
//  Created by Valentin FLGT on 13/08/2023.
//

import SwiftUI

struct _x3View: View {
    var body: some View {
        VStack {
            HStack {
                Rectangle().frame(width: 30, height: 30)
                Rectangle().frame(width: 30, height: 30)
                Rectangle().frame(width: 30, height: 30)
            }
            HStack {
                Rectangle().frame(width: 30, height: 30)
                Rectangle().frame(width: 30, height: 30)
                Rectangle().frame(width: 30, height: 30)
            }
            HStack {
                Rectangle().frame(width: 30, height: 30)
                Rectangle().frame(width: 30, height: 30)
                Rectangle().frame(width: 30, height: 30)
            }
        }
    }
}

struct _x3View_Previews: PreviewProvider {
    static var previews: some View {
        _x3View()
    }
}
