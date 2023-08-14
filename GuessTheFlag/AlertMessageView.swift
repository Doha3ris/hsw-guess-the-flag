//
//  AlertMessageView.swift
//  GuessTheFlag
//
//  Created by Valentin FLGT on 13/08/2023.
//

import SwiftUI

struct AlertMessageView: View {
        
        @State private var showingAlert = false
        
        var body: some View {
            Button("Show Alert") {
                        showingAlert = true
                    }
            .alert("Important message", isPresented: $showingAlert) {
                Button("Delete", role: .destructive) { }
                Button("Cancel", role: .cancel) { }
            } message: {
                Text("Please read this.")
            }
    }
    
}

struct AlertMessageView_Previews: PreviewProvider {
    static var previews: some View {
        AlertMessageView()
    }
}
