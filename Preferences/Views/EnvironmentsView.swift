//
//  EnvironmentsView.swift
//  Settings-visionOS
//
//  Settings > Environments
//

import SwiftUI

struct EnvironmentsView: View {
    @State private var volume = 0.0
    @State private var automaticUpdatesEnabled = true
    
    var body: some View {
        NavigationStack {
            CustomList(title: "Environments") {
                Section {
                    ListRowNavigationLabel(title: "Appearance", subtitle: "Light", content: EnvironmentAppearanceView())
                } footer: {
                    Text("Automatically adjust the Environment appearance based on your time of day, or choose a default. Shared Environments will not be affected.")
                }
                
                Section {
                    Slider(value: $volume,
                           in: 0.0...1.0,
                           minimumValueLabel: Image(systemName: "speaker.fill"),
                           maximumValueLabel: Image(systemName: "speaker.3.fill"),
                           label: { Text("Volume") }
                    )
                } header: {
                    Text("Volume")
                } footer: {
                    Text("Adjust the volume of the Environment's ambient sounds.")
                }
                
                Section {
                    Toggle("Automatic Updates", isOn: $automaticUpdatesEnabled)
                }
            }
        }
    }
}

#Preview {
    EnvironmentsView()
}
