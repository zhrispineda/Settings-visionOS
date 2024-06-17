//
//  TransferResetView.swift
//  Settings-visionOS
//
//  Settings > General > Transfer or Reset This Device
//

import SwiftUI

struct TransferResetView: View {
    // Variables
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        CustomList(title: "Transfer or Reset This \(UIDevice().name)") {
            Text(String())
                .listRowBackground(Color.clear)
                .onAppear {
                    dismiss()
                }
        }
    }
}

#Preview {
    TransferResetView()
}
