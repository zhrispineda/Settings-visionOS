//
//  GameControllerView.swift
//  Settings-visionOS
//
//  Settings > General > Game Controller
//

import SwiftUI

struct GameControllerView: View {
    var body: some View {
        Image(systemName: "gamecontroller.fill")
            .font(.extraLargeTitle)
            .padding()
        Text("Connect a controller to continue.")
    }
}

#Preview {
    GameControllerView()
}
