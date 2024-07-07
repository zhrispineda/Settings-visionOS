//
//  LocationDetailView.swift
//  Preferences
//
//  Settings > Screen Time > Content & Privacy Restrictions > Location Services > [Selection]
//

import SwiftUI

struct LocationDetailView: View {
    // Variables
    var title = String()
    @State private var selected = "Ask Next Time Or When I Share"
    @State private var preciseLocationEnabled = true
    let options = ["Never", "Ask Next Time Or When I Share", "Always"]
    
    var body: some View {
        CustomList(title: title) {
            Section {
                Picker("", selection: $selected) {
                    ForEach(options, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            } header: {
                Text("Allow Location Access")
            } footer: {
                if title == "Siri & Dictation" {
                    Text("App explanation: \u{201C}Siri uses your location for things like answering questions and offering suggestions about what‘s nearby.\u{201D}")
                }
            }
            
            Section {
                Toggle("Precise Location", isOn: $preciseLocationEnabled)
            } footer: {
                Text("Allows apps to use your specific location. With this setting off, apps can only determine your approximate location.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        LocationDetailView()
    }
}
