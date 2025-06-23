//
//  DictationShortcutView.swift
//  Settings-visionOS
//
//  Settings > General > Keyboard > Dictation Shortcut
//

import SwiftUI

struct DictationShortcutView: View {
    @State private var selected = "Control"
    let options = ["Control", "Command", "None"]
    
    var body: some View {
        CustomList(title: "Dictation Shortcut") {
            Section("Press twice to start dictation:") {
                Picker("", selection: $selected) {
                    ForEach(options, id: \.self) {
                        Text($0 == "None" ? "\($0)" : "\(Image(systemName: "\($0.lowercased())"))\t\($0)")
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
