//
//  InputView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Braille > Input
//

import SwiftUI

struct InputView: View {
    // Variables
    let selections = ["Uncontracted Six-dot Braille", "Uncontracted Eight-dot Braille", "Contracted Braille"]
    @State private var selected = "Uncontracted Six-dot Braille"
    @State private var automaticTranslationEnabled = false
    
    var body: some View {
        CustomList(title: "Input") {
            Section {
                Picker("", selection: $selected) {
                    ForEach(selections, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            }
            
            Section {
                Toggle("Automatic Translation", isOn: $automaticTranslationEnabled)
                    .disabled(selected == "Uncontracted Eight-dot Braille")
            }
        }
    }
}

#Preview {
    NavigationStack {
        InputView()
    }
}
