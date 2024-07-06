//
//  EnvironmentAppearanceView.swift
//  Preferences
//
//  Settings > Environments > Appearance
//

import SwiftUI

struct EnvironmentAppearanceView: View {
    // Variables
    @State private var selected = "Light"
    let options = ["Automatic", "Light", "Dark"]
    
    var body: some View {
        CustomList(title: "Appearance") {
            Section {
                Picker("", selection: $selected) {
                    ForEach(options, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            } footer: {
                Text("Automatically adjust the Environment appearance based on your time of day, or choose a default. Shared Environments will not be affected.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        EnvironmentAppearanceView()
    }
}
