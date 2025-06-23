//
//  StorageView.swift
//  Settings-visionOS
//
//  Settings > Storage
//

import SwiftUI

struct StorageView: View {
    var body: some View {
        CustomViewController("/System/Library/PreferenceBundles/StorageSettingsUI.bundle/StorageSettingsUI", controller: "StorageSettingsUIWrapper")
            .toolbar {
                ToolbarItem(placement: .secondaryAction) {
                    Text("Apple Vision Pro Storage")
                        .font(.title2)
                }
            }
    }
}

#Preview {
    NavigationStack {
        StorageView()
    }
}
