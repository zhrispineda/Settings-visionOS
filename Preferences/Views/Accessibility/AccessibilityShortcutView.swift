//
//  AccessibilityShortcutView.swift
//  Preferences
//
//  Settings > Accessibility > Accessibility Shortcut
//

import SwiftUI

struct AccessibilityShortcutView: View {
    // Variables
    @State private var selected: [String] = []
    @State private var shortcuts = ["Background Sounds", "AssistiveTouch", "Classic Invert", "Full Keyboard Access", "Increase Contrast", "Left/Right Balance", "Pointer Control", "Reduce Motion", "Reduce White Point", "Speak Screen", "Switch Control", "VoiceOver"]
    
    var body: some View {
        CustomList(title: "Accessibility Shortcut") {
            Section(content: {}, footer: {
                Text("Configure and then triple-click the Digital Crown to toggle accessibility features on or off.")
            })
            
            Section(content: {
                ForEach(shortcuts, id: \.self) { shortcut in
                    Button(action: {
                        if let index = selected.firstIndex(of: shortcut) {
                            selected.remove(at: index)
                        } else {
                            selected.append(shortcut)
                        }
                    }, label: {
                        HStack(spacing: 15) {
                            Image(systemName: "checkmark")
                                .foregroundStyle(.blue)
                                .opacity(selected.contains(shortcut) ? 1.0 : 0.0)
                            Text(shortcut)
                            Spacer()
                            Image(systemName: "line.3.horizontal")
                                .foregroundStyle(.secondary)
                        }
                    })
                }
                .onMove { prev, new in
                    shortcuts.move(fromOffsets: prev, toOffset: new)
                }
            }, header: {
                Text("Triple-click the Digital Crown for:")
            })
        }
    }
}

#Preview {
    AccessibilityShortcutView()
}
