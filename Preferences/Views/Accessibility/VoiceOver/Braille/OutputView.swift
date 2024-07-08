//
//  OutputView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Braille > Output
//

import SwiftUI

struct OutputView: View {
    // Variables
    let selections = ["Uncontracted Six-dot Braille", "Uncontracted Eight-dot Braille", "Contracted Braille"]
    @State private var selected = "Uncontracted Six-dot Braille"
    
    var body: some View {
        CustomList(title: "Output") {
            Picker("", selection: $selected) {
                ForEach(selections, id: \.self) {
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
        OutputView()
    }
}
