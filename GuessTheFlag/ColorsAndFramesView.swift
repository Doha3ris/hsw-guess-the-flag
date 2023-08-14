//
//  ColorsAndFramesView.swift
//  GuessTheFlag
//
//  Created by Valentin FLGT on 13/08/2023.
//

import SwiftUI

struct ColorsAndFramesView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Color.red
                Color.blue
            }

            Text("Your content")
                .foregroundColor(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
    }
}

struct ColorsAndFramesView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsAndFramesView()
    }
}
