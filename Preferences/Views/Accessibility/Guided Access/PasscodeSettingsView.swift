//
//  PasscodeSettingsView.swift
//  Preferences
//
//  Settings > Accessibility > Guided Access > Passcode Settings
//

import SwiftUI

struct PasscodeSettingsView: View {
    var body: some View {
        CustomList(title: "Passcode Settings") {
            Section(content: {
                Button("Set Guided Access Passcode", action: {})
            }, footer: {
                Text("Set the passcode used when Guided Access is enabled.")
            })
        }
    }
}

#Preview {
    PasscodeSettingsView()
}
