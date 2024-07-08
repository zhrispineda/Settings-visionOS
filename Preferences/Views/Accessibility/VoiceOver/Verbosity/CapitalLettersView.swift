//
//  CapitalLettersView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Verbosity > Capital Letters
//

import SwiftUI

struct CapitalLettersView: View {
    // Variables
    let options = ["Speak Cap", "Play Sound", "Change Pitch", "Do Nothing"]
    @State private var selected = "Speak Cap"
    
    var body: some View {
        CustomList(title: "Capital Letters") {
            Picker("", selection: $selected) {
                ForEach(options, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.inline)
            .labelsHidden()
        }
    }
}

#Preview {
    NavigationStack {
        CapitalLettersView()
    }
}
