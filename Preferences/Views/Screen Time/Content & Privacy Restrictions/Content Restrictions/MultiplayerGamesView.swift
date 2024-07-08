//
//  MultiplayerGamesView.swift
//  Preferences
//
//  Settings > Screen Time > Content & Privacy Restrictions > Content Restrictions > Multiplayer Games
//

import SwiftUI

struct MultiplayerGamesView: View {
    // Variables
    @State private var selected = "Allow with Everyone"
    let options = ["Don't Allow", "Allow with Friends Only", "Allow with Everyone"]
    
    var body: some View {
        CustomList(title: "Multiplayer Games") {
            Picker("", selection: $selected) {
                ForEach(options, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.inline)
            .labelsHidden()
        }
    }
}

#Preview {
    NavigationStack {
        MultiplayerGamesView()
    }
}
