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
                    NavigationLink("About", destination: AboutView())
                }
                
                Section {
                    NavigationLink("AutoFill & Passwords", destination: PasswordOptionsView())
                    NavigationLink("Dictionary", destination: DictionaryView())
                    NavigationLink("Fonts", destination: FontsView())
                    NavigationLink("Keyboard", destination: KeyboardView())
                    //NavigationLink("Game Controller", destination: GameControllerView())
                    NavigationLink("Language & Region", destination: EmptyView())
                }
                
                Section {
                    NavigationLink("VPN & Device Management", destination: VPNDeviceManagementView())
                }
                
                Section {
                    NavigationLink("Remote Devices", destination: EmptyView())
                }
                
                Section {
                    NavigationLink("Transfer or Reset This \(UIDevice().name)", destination: TransferResetView())
                }
            }
        }
    }
}

#Preview {
    GeneralView()
}
