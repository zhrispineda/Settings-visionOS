//
//  SwitchesView.swift
//  Preferences
//
//  Settings > Accessibility > Switch Control > Switches
//

import SwiftUI

struct SwitchesView: View {
    var body: some View {
        CustomList(title: "Switches") {
            Section("Switches") {}
            
            Section {
                NavigationLink("Add New Switch...", destination: AddNewSwitchView())
            } footer: {
                Text("One switch should be assigned to the Select Item action to ensure Switch Control functions correctly.")
            }
            
            Section {
                NavigationLink("Bluetooth Devices") {
                    CustomList(title: "Bluetooth Devices...") {
                        Section {
                            HStack {
                                Text("Searching...")
                                Spacer()
                                ProgressView()
                            }
                        } header: {
                            Text("BLUETOOTH DEVICES...")
                                .fontWeight(.medium)
                                .font(.footnote)
                        }
                        .foregroundStyle(.secondary)
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        SwitchesView()
    }
}
