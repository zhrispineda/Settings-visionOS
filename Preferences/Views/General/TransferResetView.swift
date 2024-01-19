//
//  TransferResetView.swift
//  Settings-visionOS
//
//  Settings > General > Transfer or Reset This Apple Vision Pro
//

import SwiftUI

struct TransferResetView: View {
    var body: some View {
        Text("")
            .navigationTitle("Transfer or Reset This Apple Vision Pro")
            .toolbar {
                ToolbarItem(placement: .principal, content: {
                    HStack {
                        Text("Transfer or Reset This Apple Vision Pro")
                            .font(.title)
                    }
                    .frame(maxWidth: .infinity)
                    .offset(x: -40)
                })
            }
    }
}

#Preview {
    TransferResetView()
}
