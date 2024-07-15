//
//  DigitalCrownView.swift
//  Preferences
//
//  Settings > Accessibility > Digital Crown
//

import SwiftUI

struct AccessibilityDigitalCrownView: View {
    // Variables
    @State private var selected = "Default"
    let options = ["Default", "Slow", "Slowest"]
    
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
                Text("Click Speed")
            } footer: {
                Text("Adjust the speed required to double or triple-press the Digital Crown.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        AccessibilityDigitalCrownView()
    }
}
