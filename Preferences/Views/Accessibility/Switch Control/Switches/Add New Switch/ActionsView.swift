//
//  ActionsView.swift
//  Preferences
//
//  Settings > Accessibility > Switch Control > Switches > Add New Switch > Sound > [Sound]
//

import SwiftUI

struct ActionsView: View {
    // Variables
    let scannerItems = ["Select Item", "Scanner Menu", "Stop Scanning", "Move to Next Item", "Move to Previous Item", "Resume Auto Scanning"]
    let systemItems = ["Tap", "Home", "Notification Center", "Control Center", "Shortcuts Menu", "Decrease Volume", "Increase Volume", "Siri", "Dictation", "Accessibility Shortcut"]
    
    var body: some View {
        CustomList(title: "Sound") {
            Section {
                Button("Practice") {}
            } footer: {
                Text("Practice sounds before assigning one to an action.")
            }
            
            Section {} footer: {
                Text("Choose a switch action.")
            }
            
            Section {
                ForEach(scannerItems, id: \.self) { scanner in
                    Button(scanner) {}
                }
            } header: {
                Text("Scanner")
            }
            
            Section("System") {
                ForEach(systemItems, id: \.self) { scanner in
                    Button(scanner) {}
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        ActionsView()
    }
}
