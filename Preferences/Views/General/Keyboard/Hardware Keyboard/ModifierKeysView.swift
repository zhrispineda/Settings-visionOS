//
//  ModifierKeysView.swift
//  Settings-visionOS
//
//  Settings > General > Keyboard > Hardware Keyboard > Modifier Keys
//

import SwiftUI

struct ModifierKeysView: View {
    var body: some View {
        List {
            Section(content: {}, footer: {
                Text("For each modifier key, choose the action you want it to perform.")
            })
            
            Section {
                Button("Restore Defaults", action: {})
            }
        }
        .padding([.leading, .trailing], 30)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Modifier Keys")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
            })
        }
    }
}

#Preview {
    ModifierKeysView()
}
