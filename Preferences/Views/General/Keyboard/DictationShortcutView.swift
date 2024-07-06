//
//  DictationShortcutView.swift
//  Settings-visionOS
//
//  Settings > General > Keyboard > Dictation Shortcut
//

import SwiftUI

struct DictationShortcutView: View {
    // Variables
    @State private var selected = "Control"
    let options = ["Control", "Command", "None"]
    
    var body: some View {
        CustomList(title: "Dictation Shortcut") {
            Section("Press twice to start dictation:") {
                Picker("", selection: $selected) {
                    ForEach(options, id: \.self) {
                        Text(Image(systemName: "\($0.lowercased())")) + Text((selected == "None" ? "\t" : "\t") + $0)
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            }
        }
    }
}

#Preview {
    NavigationStack {
        DictationShortcutView()
    }
}
