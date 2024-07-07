//
//  AppearanceView.swift
//  Settings-visionOS
//
//  Settings > Display
//

import SwiftUI

struct AppearanceView: View {
    // Variables
    @State private var boldTextEnabled = false
    @State private var brightness = CGFloat(0.5)
    
    var body: some View {
        CustomList(title: "Display") {
            Section {
                NavigationLink("Text Size", destination: TextSizeView(largerAccessibilitySizes: .constant(false)))
                Toggle("Bold Text", isOn: $boldTextEnabled)
            }
            
            Section("Brightness") {
                Group {
                    Slider(value: $brightness,
                           in: 0.0...1.0,
                           minimumValueLabel: Image(systemName: "sun.min.fill"),
                           maximumValueLabel: Image(systemName: "sun.max.fill"),
                           label: {
                                Text("Volume")
                            }
                    )
                }
                .imageScale(.large)
            }
            
            Section("Display") {
                ListRowNavigationLabel(title: "Appearance", subtitle: "Large", content: DisplayAppearanceView())
            }
        }
    }
}

#Preview {
    NavigationStack {
        AppearanceView()
    }
}
