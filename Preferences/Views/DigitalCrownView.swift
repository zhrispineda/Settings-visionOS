//
//  DigitalCrownView.swift
//  Preferences
//
//  Settings > Digital Crown
//

import SwiftUI

struct DigitalCrownView: View {
    // Variables
    @State private var selected = "Immersion"
    let options = ["Immersion", "Volume"]
    
    var body: some View {
        CustomList(title: "Digital Crown") {
            Section {
                Picker("", selection: $selected) {
                    ForEach(options, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            } header: {
                Text("Default Focus")
            } footer: {
                Text("Turning the Digital Crown will default to \(selected.lowercased()) control. Look at a control while turning the Digital Crown to change focus.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        DigitalCrownView()
    }
}
