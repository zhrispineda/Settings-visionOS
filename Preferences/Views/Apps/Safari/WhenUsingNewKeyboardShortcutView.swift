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
        List(options, id: \.self) { option in
            Button(action: { selectedOption = option }, label: {
                HStack {
                    Text(option)
                    Spacer()
                    if selectedOption == option { Image(systemName: "checkmark") }
                }
            })
        }
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                Text("When Using New Keyboard Shortcut")
                .font(.title)
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    WhenUsingNewKeyboardShortcutView()
}
