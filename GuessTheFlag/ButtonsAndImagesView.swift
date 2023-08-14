//
//  ButtonsAndImagesView.swift
//  GuessTheFlag
//
//  Created by Valentin FLGT on 13/08/2023.
//

import SwiftUI

struct ButtonsAndImagesView: View {
    var body: some View {
        VStack {
            Button("Button 1") { }
                .buttonStyle(.bordered)
            Button("Button 2", role: .destructive) { }
                .buttonStyle(.bordered)
            Button("Button 3") { }
                .buttonStyle(.borderedProminent)
            Button("Button 4", role: .destructive) { }
                .buttonStyle(.borderedProminent)
            Button("Button 5", role: .destructive) { }
                .buttonStyle(.borderedProminent)
                .tint(.mint)
            Button {
                print("Edit button was tapped")
            } label: {
                Label("Edit", systemImage: "pencil")
            }
        }
    }
}

struct ButtonsAndImagesView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsAndImagesView()
    }
}
