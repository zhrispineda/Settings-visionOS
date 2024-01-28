//
//  AllCommandsView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Commands > All Commands
//

import SwiftUI

struct AllCommandsView: View {
    let commands = ["Interaction", "Basic Navigation", "Text Navigation", "Advanced Navigation", "Editing", "Rotor", "Scrolling", "Speech & Audio", "Output", "Braille", "VoiceOver", "System", "Other"]
    
    var body: some View {
        CustomList(title: "All Commands") {
            ForEach(commands, id: \.self) { command in
                NavigationLink(command, destination: AllCommandsDetailView(title: command))
            }
        }
    }
}

#Preview {
    NavigationStack {
        AllCommandsView()
    }
}
