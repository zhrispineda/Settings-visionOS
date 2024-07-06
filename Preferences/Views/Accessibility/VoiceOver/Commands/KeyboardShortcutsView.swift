//
//  KeyboardShortcutsView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Commands > Keyboard Shortcuts
//

import SwiftUI

struct KeyboardShortcut: Identifiable {
    var id: String { name }
    let name: String
    let shortcut: String
}

struct KeyboardShortcutsView: View {
    // Variables
    @State private var searchText = String()
    @State private var keyboardShortcuts: [KeyboardShortcut] = [
        KeyboardShortcut(name: "Magic Tap", shortcut: "\u{002D}"),
        KeyboardShortcut(name: "Watch Item", shortcut: "\u{21E7} \u{002D}"),
        KeyboardShortcut(name: "Label Item", shortcut: "\u{002F}"),
        KeyboardShortcut(name: "Toggle Lock Modifier Keys", shortcut: "\u{003B}"),
        KeyboardShortcut(name: "Move to Previous Visible App", shortcut: "\u{005B}"),
        KeyboardShortcut(name: "Switch to Previous App", shortcut: "\u{21E7} \u{005B}"),
        KeyboardShortcut(name: "Move to Next Visible App", shortcut: "\u{005D}"),
        KeyboardShortcut(name: "Switch to Next App", shortcut: "\u{21E7} \u{005D}"),
        KeyboardShortcut(name: "Escape", shortcut: "\u{0060}"),
        KeyboardShortcut(name: "Read All", shortcut: "\u{0041}"),
        KeyboardShortcut(name: "Previous Word", shortcut: "\u{2318} \u{21E7} \u{0041}"),
        KeyboardShortcut(name: "Next Word", shortcut: "\u{2318} \u{0041}"),
        KeyboardShortcut(name: "Read From Top", shortcut: "\u{0042}"),
        KeyboardShortcut(name: "Move to Previous Item with Bold Text", shortcut: "\u{2318} \u{21E7} \u{0042}"),
        KeyboardShortcut(name: "Read Character", shortcut: "\u{0043}"),
        KeyboardShortcut(name: "Copy Speech to Clipboard", shortcut: "\u{21E7} \u{0043}"),
        KeyboardShortcut(name: "Move to Previous Style Change", shortcut: "\u{2318} \u{21E7} \u{0043}"),
        KeyboardShortcut(name: "Move to Next Style Change", shortcut: "\u{2318} \u{0043}"),
        KeyboardShortcut(name: "\u{0044}", shortcut: ""),
        KeyboardShortcut(name: "Describe App Location", shortcut: "\u{21E7} \u{0044}"),
        KeyboardShortcut(name: "Move to Previous Different Item", shortcut: "\u{2318} \u{21E7} \u{0044}"),
        KeyboardShortcut(name: "Move to Next Different Item", shortcut: "\u{2318} \u{0044}"),
        KeyboardShortcut(name: "Move to Previous Misspelled Word", shortcut: "\u{2318} \u{21E7} \u{0045}"),
        KeyboardShortcut(name: "Move to Next Misspelled Word", shortcut: "\u{2318} \u{0045}"),
        KeyboardShortcut(name: "Item Text Search", shortcut: "\u{0046}"),
        KeyboardShortcut(name: "Previous Item with 3D Touch", shortcut: "\u{21E7} \u{0046}"),
        KeyboardShortcut(name: "Move to Previous Frame", shortcut: "\u{2318} \u{21E7} \u{0046}"),
        KeyboardShortcut(name: "Move to Next Frame", shortcut: "\u{2318} \u{0046}"),
        KeyboardShortcut(name: "Next Search Result", shortcut: "\u{0047}"),
        KeyboardShortcut(name: "Previous Search Result", shortcut: "\u{21E7} \u{0047}"),
        KeyboardShortcut(name: "Move to Previous Image", shortcut: "\u{2318} \u{21E7} \u{0047}"),
        KeyboardShortcut(name: "Move to Next Image", shortcut: "\u{2318} \u{0047}"),
        KeyboardShortcut(name: "Home", shortcut: "\u{0048}"),
        KeyboardShortcut(name: "Move to Previous Heading", shortcut: "\u{2318} \u{21E7} \u{0048}"),
        KeyboardShortcut(name: "Move to Next Heading", shortcut: "\u{2318} \u{0048}"),
        KeyboardShortcut(name: "Show Item Chooser", shortcut: "\u{0049}"),
        KeyboardShortcut(name: "Move to Previous Item with Italic Text", shortcut: "\u{2318} \u{21E7} \u{0049}"),
        KeyboardShortcut(name: "Move to Next Item with Italic Text", shortcut: "\u{2318} \u{0049}"),
        KeyboardShortcut(name: "Move to Linked Item", shortcut: "\u{004A}"),
        KeyboardShortcut(name: "Move to Previous Control", shortcut: "\u{2318} \u{21E7} \u{004A}"),
        KeyboardShortcut(name: "Move to Next Control", shortcut: "\u{2318} \u{004A}"),
        KeyboardShortcut(name: "Start Help", shortcut: "\u{004B}"),
        KeyboardShortcut(name: "Move to Previous Color Change", shortcut: "\u{2318} \u{21E7} \u{004B}"),
        KeyboardShortcut(name: "Move to Next Color Change", shortcut: "\u{2318} \u{004B}"),
        KeyboardShortcut(name: "Read Line", shortcut: "\u{004C}"),
        KeyboardShortcut(name: "Describe Item", shortcut: "\u{21E7} \u{004C}"),
        KeyboardShortcut(name: "Move to Previous Link", shortcut: "\u{2318} \u{21E7} \u{004C}"),
        KeyboardShortcut(name: "Move to Next Link", shortcut: "\u{2318} \u{004C}"),
        KeyboardShortcut(name: "Move to Status Bar", shortcut: "\u{004D}"),
        KeyboardShortcut(name: "Perform Long Press", shortcut: "\u{21E7} \u{004D}"),
        KeyboardShortcut(name: "Move to Previous Same Heading", shortcut: "\u{2318} \u{21E7} \u{004D}"),
        KeyboardShortcut(name: "Move to Next Same Heading", shortcut: "\u{2318} \u{004D}"),
        KeyboardShortcut(name: "Toggle Announcement History", shortcut: "\u{004E}"),
        KeyboardShortcut(name: "Read Hint", shortcut: "\u{21E7} \u{004E}"),
        KeyboardShortcut(name: "Move to Previous Font Change", shortcut: "\u{2318} \u{21E7} \u{004F}"),
        KeyboardShortcut(name: "Move to Next Font Change", shortcut: "\u{2318} \u{004F}"),
        KeyboardShortcut(name: "Move to Previous Item with Plain Text", shortcut: "\u{2318} \u{21E7} \u{0050}"),
        KeyboardShortcut(name: "Move to Next Item with Plain Text", shortcut: "\u{2318} \u{0050}"),
        KeyboardShortcut(name: "Toggle Single Letter Quick Nav", shortcut: "\u{0051}"),
        KeyboardShortcut(name: "Toggle Quick Nav", shortcut: "\u{21E7} \u{0051}"),
        KeyboardShortcut(name: "Move to Previous Blockquote", shortcut: "\u{2318} \u{21E7} \u{0051}"),
        KeyboardShortcut(name: "Move to Next Blockquote", shortcut: "\u{2318} \u{0051}"),
        KeyboardShortcut(name: "Read Row Header", shortcut: "\u{0052}"),
        KeyboardShortcut(name: "Toggle Mute", shortcut: "\u{0053}"),
        KeyboardShortcut(name: "Move to Previous Same Item", shortcut: "\u{2318} \u{21E7} \u{0053}"),
        KeyboardShortcut(name: "Move to Next Same Item", shortcut: "\u{2318} \u{0053}"),
        KeyboardShortcut(name: "Read Text Style", shortcut: "\u{0054}"),
        KeyboardShortcut(name: "Read Table Row Column", shortcut: "\u{21E7} \u{0054}"),
        KeyboardShortcut(name: "Move to Previous Table", shortcut: "\u{2318} \u{21E7} \u{0054}"),
        KeyboardShortcut(name: "Move to Next Table", shortcut: "\u{2318} \u{0054}"),
        KeyboardShortcut(name: "Read URL", shortcut: "\u{21E7} \u{0055}"),
        KeyboardShortcut(name: "Move to Previous Item with Underlined Text", shortcut: "\u{2318} \u{21E7} \u{0055}"),
        KeyboardShortcut(name: "Move to Next Item with Underlined Text", shortcut: "\u{2318} \u{0055}"),
        KeyboardShortcut(name: "Open Quick Settings", shortcut: "\u{0056}"),
        KeyboardShortcut(name: "Move to Previous Visited Link", shortcut: "\u{2318} \u{21E7} \u{0056}"),
        KeyboardShortcut(name: "Move to Next Visited Link", shortcut: "\u{2318} \u{0056}"),
        KeyboardShortcut(name: "Read Word", shortcut: "\u{0057}"),
        KeyboardShortcut(name: "Move to Previous Same Blockquote", shortcut: "\u{2318} \u{21E7} \u{0057}"),
        KeyboardShortcut(name: "Move to Next Same Blockquote", shortcut: "\u{2318} \u{0057}"),
        KeyboardShortcut(name: "Move to Previous List", shortcut: "\u{2318} \u{21E7} \u{0058}"),
        KeyboardShortcut(name: "Move to Next List", shortcut: "\u{2318} \u{0058}"),
        KeyboardShortcut(name: "Move to Previous Column", shortcut: "\u{2318} \u{21E7} \u{0059}"),
        KeyboardShortcut(name: "Move to Next Column", shortcut: "\u{2318} \u{0059}"),
        KeyboardShortcut(name: "Move to Previous Item", shortcut: "\u{2190}"),
        KeyboardShortcut(name: "Previous Character", shortcut: "\u{21E7} \u{2190}"),
        KeyboardShortcut(name: "Previous Rotor", shortcut: "\u{2318} \u{2190}"),
        KeyboardShortcut(name: "Previous Rotor Item", shortcut: "\u{2191}"),
        KeyboardShortcut(name: "Move Out", shortcut: "\u{21E7} \u{2191}"),
        KeyboardShortcut(name: "Previous Rotor Item", shortcut: "\u{2318} \u{2191}"),
        KeyboardShortcut(name: "Move to Next Item", shortcut: "\u{2192}"),
        KeyboardShortcut(name: "Next Character", shortcut: "\u{21E7} \u{2192}"),
        KeyboardShortcut(name: "Next Rotor", shortcut: "\u{2318} \u{2192}"),
        KeyboardShortcut(name: "Next Rotor Item", shortcut: "\u{2193}"),
        KeyboardShortcut(name: "Move In", shortcut: "\u{21E7} \u{2193}"),
        KeyboardShortcut(name: "Next Rotor Item", shortcut: "\u{2318} \u{2193}"),
        KeyboardShortcut(name: "Notification Center", shortcut: "Page Up"),
        KeyboardShortcut(name: "Previous Paragraph", shortcut: "\u{21E7} Page Up"),
        KeyboardShortcut(name: "Previous Sentence", shortcut: "\u{2318} Page Up"),
        KeyboardShortcut(name: "Control Center", shortcut: "Page Down"),
        KeyboardShortcut(name: "Next Paragraph", shortcut: "\u{21E7} Page Down"),
        KeyboardShortcut(name: "Next Sentence", shortcut: "\u{2318} Page Down"),
        KeyboardShortcut(name: "Move to Top of Container", shortcut: "Home \u{21E7}"),
        KeyboardShortcut(name: "Move to Bottom of Container", shortcut: "End \u{21E7}"),
        KeyboardShortcut(name: "Move to First Item", shortcut: "Home"),
        KeyboardShortcut(name: "Move to Last Item", shortcut: "End"),
        KeyboardShortcut(name: "Toggle Text Selection", shortcut: "Return"),
        KeyboardShortcut(name: "Activate", shortcut: "Space"),
        KeyboardShortcut(name: "Toggle Screen Curtain", shortcut: "Fn \u{002D}"),
        KeyboardShortcut(name: "Read Item Summary", shortcut: "Fn \u{0033}"),
        KeyboardShortcut(name: "Read System-Focused Item Summary", shortcut: "Fn \u{0034}"),
        KeyboardShortcut(name: "Move to System-Focused Item", shortcut: "\u{21E7} Fn \u{0034}"),
        KeyboardShortcut(name: "Read Selected Text", shortcut: "Fn \u{0036}"),
        KeyboardShortcut(name: "Open VoiceOver Settings", shortcut: "Fn \u{0038}"),
        KeyboardShortcut(name: "Toggle Screen Curtain", shortcut: "F11"),
        KeyboardShortcut(name: "Read Item Summary", shortcut: "F3"),
        KeyboardShortcut(name: "Read System-Focused Item Summary", shortcut: "F4"),
        KeyboardShortcut(name: "Move to System-Focused Item", shortcut: "\u{21E7} F4"),
        KeyboardShortcut(name: "Read Selected Text", shortcut: "F6"),
        KeyboardShortcut(name: "Open VoiceOver Settings", shortcut: "F8"),
    ]
    @State private var showingKeyboardShortcutAlert = false
    
    var body: some View {
        List {
            Section {
                ForEach($keyboardShortcuts, editActions: .delete) { $shortcut in
                    Button {
                        showingKeyboardShortcutAlert.toggle()
                    } label: {
                        LabeledContent(shortcut.name, value: shortcut.shortcut)
                    }
                    .alert("Keyboard Shortcut", isPresented: $showingKeyboardShortcutAlert) {
                        Button("Done") {}.disabled(true)
                        Button("Cancel", role: .cancel) {}
                    } message: {
                        Text("Enter a key combination on your keyboard.")
                    }
                }
            } header: {
                Text("Keyboard Shortcuts")
            }
        }
        .padding(.horizontal, 45)
        .searchable(text: $searchText)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                EditButton()
            }
            ToolbarItem(placement: .principal) {
                Text("Keyboard Shortcuts")
                    .font(.title2)
                    .frame(maxWidth: .infinity)
                    .offset(x: 50)
            }
        }
    }
}

#Preview {
    NavigationStack {
        KeyboardShortcutsView()
    }
}
