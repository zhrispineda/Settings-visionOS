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
            List {
                Section {
                    NavigationLink("About", destination: AboutView())
                }
                
                Section {
                    NavigationLink("Keyboard", destination: KeyboardsView())
                    NavigationLink("Game Controller", destination: GameControllerView())
                    NavigationLink("Fonts", destination: {})
                    NavigationLink("Dictionary", destination: {})
                }
                
                Section {
                    NavigationLink("VPN & Device Management", destination: VPNDeviceManagementView())
                }
                
                Section {
                    NavigationLink("Transfer or Reset This Apple Vision Pro", destination: TransferResetView())
                }
            }
            .padding([.leading, .trailing], 25)
            .navigationTitle("General")
            .toolbar {
                ToolbarItem(placement: .principal, content: {
                    HStack {
                        Text("General")
                            .font(.title)
                    }
                    .frame(maxWidth: .infinity)
                })
            }
        }
    }
}

#Preview {
    GeneralView()
}
