//
//  PerAppSettingsView.swift
//  Preferences
//
//  Settings > Accessibility > Per-App Settings
//

import SwiftUI

struct PerAppSettingsView: View {
    // Variables
    
    var body: some View {
        CustomList(title: "Per-App Settings") {
            Section(content: {
                Button("Add App", action: {}) // TODO: Popover
            }, header: {
                Text("App Customization")
            })
        }
    }
}

#Preview {
    PerAppSettingsView()
}
