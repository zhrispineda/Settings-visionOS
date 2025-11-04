//
//  GeneralView.swift
//  Settings-visionOS
//
//  Settings > General
//

import SwiftUI

struct GeneralView: View {
    var body: some View {
        CustomList(title: "General") {
            Section {
                SLink("About", icon: "com.apple.graphic-icon.about-current-device", destination: AboutView())
            }
            
            Section {
                SLink("AutoFill & Passwords", icon: "com.apple.graphic-icon.autofill", destination: PasswordOptionsView())
                SLink("Dictionary", icon: "com.apple.graphic-icon.dictionary", destination: DictionaryView())
                SLink("Fonts", icon: "com.apple.graphic-icon.fonts", destination: FontsView())
                SLink("Keyboard", icon: "com.apple.graphic-icon.keyboard", destination: KeyboardView())
                SLink("Language & Region", icon: "com.apple.graphic-icon.language", destination: LanguageRegionView())
            }
            
            Section {
                SLink("VPN & Device Management", icon: "com.apple.graphic-icon.gear", destination: VPNDeviceManagementView())
            }
            
            Section {
                SLink("Remote Devices", icon: "com.apple.MRPreferences.icon.remote-devices", destination: RemoteDevicesView())
            }
        }
    }
}

#Preview {
    GeneralView()
}
