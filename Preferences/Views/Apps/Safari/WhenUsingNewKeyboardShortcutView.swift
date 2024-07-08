//
//  WhenUsingNewKeyboardShortcutView.swift
//  Preferences
//
//  Settings > Apps > Safari > When Using New Keyboard Shortcut
//

import SwiftUI

struct WhenUsingNewKeyboardShortcutView: View {
    // Variables
    @State private var selected = "Open Tab"
    let options = ["Open Tab", "Open Window"]
    
    var body: some View {
        CustomList(title: "When Using New Keyboard Shortcut") {
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
        WhenUsingNewKeyboardShortcutView()
    }
}
