//
//  GameControllerView.swift
//  Settings-visionOS
//
//  Created by Chris on 1/8/24.
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
