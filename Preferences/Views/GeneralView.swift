//
//  GeneralView.swift
//  Settings-visionOS
//
//  Settings > General
//

import SwiftUI

struct GeneralView: View {
    var body: some View {
        NavigationStack {
            CustomList(title: "General") {
                Section {
                    SLink("About", color: .gray, icon: "vision.pro", destination: AboutView())
                }
                
                Section {
                    SLink("AutoFill & Passwords", color: .gray, icon: "key.dots.fill", destination: PasswordOptionsView())
                    SLink("Dictionary", color: .blue, icon: "text.book.closed.fill", destination: DictionaryView())
                    SLink("Fonts", color: .gray, icon: "textformat", destination: FontsView())
                    SLink("Keyboard", color: .gray, icon: "keyboard.fill", destination: KeyboardView())
                    SLink("Language & Region", color: .blue, icon: "globe", destination: LanguageRegionView())
                }
                
                Section {
                    SLink("VPN & Device Management", color: .gray, icon: "gear", destination: VPNDeviceManagementView())
                }
                
                Section {
                    SLink("Remote Devices", color: .gray, icon: "macbook", destination: RemoteDevicesView())
                }
                
//                Section {
//                    NavigationLink("Transfer or Reset This \(UIDevice().name)", destination: TransferResetView())
//                }
            }
        }
    }
}

#Preview {
    GeneralView()
}
