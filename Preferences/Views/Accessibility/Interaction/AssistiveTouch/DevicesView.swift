//
//  DevicesView.swift
//  Preferences
//
//  Settings > Accessibility > Interaction > AssistiveTouch > Devices
//

import SwiftUI

struct DevicesView: View {
    var body: some View {
        CustomList(title: "Devices") {
            Section {
                NavigationLink("Bluetooth Devices...") {
                    CustomList(title: "Bluetooth Devices") {
                        Section {
                            HStack {
                                Text("Searching...")
                                Spacer()
                                ProgressView()
                            }
                        } header: {
                            Text("DEVICES")
                                .fontWeight(.medium)
                                .font(.footnote)
                        }
                        .foregroundStyle(.secondary)
                    }
                }
            } footer: {
                Text("AssistiveTouch allows you to connect Bluetooth assistive pointer devices, such as joystick.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        DevicesView()
    }
}
