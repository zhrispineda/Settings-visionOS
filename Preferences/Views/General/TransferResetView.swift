//
//  TransferResetView.swift
//  Settings-visionOS
//
//  Settings > General > Transfer or Reset This Device
//

import SwiftUI

struct TransferResetView: View {
    var body: some View {
        CustomList(title: "Transfer or Reset This \(UIDevice().name)") {
            // Empty
        }
    }
}

#Preview {
    TransferResetView()
}
