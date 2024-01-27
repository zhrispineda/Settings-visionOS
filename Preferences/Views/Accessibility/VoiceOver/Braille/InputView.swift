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
                ForEach(selections, id: \.self) { selection in
                    Button(action: {
                        selected = selection
                    }, label: {
                        HStack {
                            Text(selection)
                            Spacer()
                            if selection == selected {
                                Image(systemName: "checkmark")
                            }
                        }
                    })
                }
            }
            
            Section {
                Toggle("Automatic Translation", isOn: $automaticTranslationEnabled)
                    .disabled(selected == "Uncontracted Eight-dot Braille")
            }
        }
    }
}

#Preview {
    InputView()
}
