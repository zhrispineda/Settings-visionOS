//
//  GameCenterView.swift
//  Settings-visionOS
//
//  Settings > Game Center
//

import SwiftUI

struct GameCenterView: View {
    @State private var gameCenterEnabled = false
    
    var body: some View {
        CustomList(title: "Game Center") {
            // Game Center Section
            Section(content: {
                Toggle("Game Center", isOn: $gameCenterEnabled)
            }, footer: {
                Text("A social gaming service that lets you interact with friends, track and compare scores and achievements, challenge other players, and compete in multiplayer games.\n[See how your data is managed...](#)")
            })
        }
    }
}

#Preview {
    GameCenterView()
}
