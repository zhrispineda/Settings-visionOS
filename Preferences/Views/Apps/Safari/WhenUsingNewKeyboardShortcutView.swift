//
//  WhenUsingNewKeyboardShortcutView.swift
//  Preferences
//
//  Settings > Apps > Safari > When Using New Keyboard Shortcut
//

import SwiftUI

struct WhenUsingNewKeyboardShortcutView: View {
    // Variables
    @State private var selectedOption: String? = "Open Tab"

    let options = ["Open Tab", "Open Window"]
    
    var body: some View {
        CustomList(title: "When Using New Keyboard Shortcut") {
            ForEach(options, id: \.self) { option in
                Button(action: { selectedOption = option }, label: {
                    HStack {
                        Text(option)
                        Spacer()
                        if selectedOption == option { Image(systemName: "checkmark") }
                    }
                })
            }
        }
    }
}

#Preview {
    WhenUsingNewKeyboardShortcutView()
}
