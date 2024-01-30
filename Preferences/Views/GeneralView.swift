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
                    NavigationLink("Keyboard", destination: KeyboardView())
                    NavigationLink("Game Controller", destination: GameControllerView())
                    NavigationLink("Fonts", destination: FontsView())
                    NavigationLink("Dictionary", destination: DictionaryView())
                }
                
                Section {
                    NavigationLink("VPN & Device Management", destination: VPNDeviceManagementView())
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
