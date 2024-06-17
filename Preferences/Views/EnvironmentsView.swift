//
//  EnvironmentsView.swift
//  Settings-visionOS
//
//  Settings > Environments
//

import SwiftUI

struct EnvironmentsView: View {
    @State private var volume = 100.0
    
    var body: some View {
        NavigationStack {
            CustomList(title: "Environments") {
                Section(content: {
                    ListRowNavigationLabel(title: "Appearance", subtitle: "Light", content: EnvironmentAppearanceView())
                }, footer: {
                    Text("Automatically adjust the Environment appearance based on your time of day, or choose a default. Shared Environments will not be affected.")
                })
                
                Section(content: {
                    Slider(value: $volume)
                }, header: {
                    Text("Volume")
                }, footer: {
                    Text("Adjust the volume of the Environment's ambient sounds.")
                })
            }
        }
    }
}

#Preview {
    EnvironmentsView()
}
