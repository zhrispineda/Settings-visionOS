//
//  NavigationStyleView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Navigation Style
//

import SwiftUI

struct NavigationStyleView: View {
    // Variables
    let styles = ["Flat", "Grouped"]
    @State private var selected = "Flat"
    
    var body: some View {
        CustomList(title: "Navigation Style") {
            Section {
                Picker("", selection: $selected) {
                    ForEach(styles, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            } footer: {
                Text("VoiceOver navigates by moving \(selected == "Flat" ? "sequentially through each item on the screen using the move next and previous commands." : "through items and groups of items on the screen.")")
            }
        }
    }
}

#Preview {
    NavigationStack {
        NavigationStyleView()
    }
}
