//
//  VersionView.swift
//  Settings-visionOS
//
//  Settings > General > About > visionOS Version
//

import SwiftUI

struct VersionView: View {
    var body: some View {
        CustomViewController("/System/Library/PrivateFrameworks/Settings/GeneralSettingsUI.framework/GeneralSettingsUI", controller: "PSGSoftwareVersionController")
            .toolbar {
                ToolbarItem(placement: .secondaryAction) {
                    Text("visionOS Version")
                        .font(.title2)
                }
            }
    }
}

#Preview {
    NavigationStack {
        VersionView()
    }
}
