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
        List {
            // Game Center Section
            Section(content: {
                Toggle("Game Center", isOn: $gameCenterEnabled)
            }, footer: {
                Text("A social gaming service that lets you interact with friends, track and compare scores and achievements, challenge other players, and compete in multiplayer games.\n[See how your data is managed...](#)")
            })
        }
        .padding([.leading, .trailing], 45)
        .navigationTitle("Game Center")
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Game Center")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
            })
        }
    }
}

#Preview {
    GameCenterView()
}
