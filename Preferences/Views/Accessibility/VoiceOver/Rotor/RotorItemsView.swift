//
//  RotorItemsView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Rotor > Rotor Items
//

import SwiftUI

struct RotorItemsView: View {
    // Variables
    @State private var rotorItems = ["Characters", "Words", "Lines", "Text Selection", "Speaking Rate", "Volume", "Audio Ducking", "Punctuation", "Sounds", "Hint", "Braille Table", "Braille Auto Advance Speed", "Containers", "Headings", "Links", "Form Controls", "Tables", "Lists", "Landmarks", "Articles", "Visited Links", "Non-Visited Links", "Buttons", "Text Fields", "Search Fields", "Images", "Static Text", "Zoom", "Same Item", "Vertical Navigation", "Typing Mode", "Audio Destination", "Describe Images", "Direct Touch", "Navigation Style"]
    @State private var selected = ["Characters", "Words", "Lines", "Speaking Rate", "Containers", "Headings", "Links", "Form Controls", "Typing Mode", "Direct Touch"]
    
    var body: some View {
        CustomList(title: "Rotor Items") {
            ForEach($rotorItems, id: \.self, editActions: .move) { $item in
                Button {
                    if let index = selected.firstIndex(of: item) {
                        selected.remove(at: index)
                    } else {
                        selected.append(item)
                    }
                } label: {
                    Label(item, systemImage: "\(selected.contains(item) ? "checkmark" : "")")
                }
            }
        }
        .environment(\.editMode, Binding.constant(EditMode.active))
    }
}

#Preview {
    NavigationStack {
        RotorItemsView()
    }
}
