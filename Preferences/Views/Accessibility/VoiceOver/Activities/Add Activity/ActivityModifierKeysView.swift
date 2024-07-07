//
//  ActivityModifierKeysView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Activities > Add Activity > Modifier Keys
//

import SwiftUI

struct ActivityModifierKeysView: View {
    // Variables
    @State var selected: [String] = []
    let options = ["Control + Option", "Caps Lock"]
    
    var body: some View {
        CustomList(title: "Modifier Keys") {
            Section {
                ForEach(options, id: \.self) { option in
                    Button {
                        if let index = selected.firstIndex(of: option) {
                            if selected.count > 1 {
                                selected.remove(at: index)
                            }
                        } else {
                            selected.append(option)
                        }
                    } label: {
                        HStack {
                            Text(option)
                            Spacer()
                            if selected.contains(option) {
                                Image(systemName: "checkmark")
                            }
                        }
                    }
                }
            } footer: {
                Text("Choose the modifier keys that must be pressed on a hardware keyboard to activate VoiceOver key commands.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        ActivityModifierKeysView()
    }
}
