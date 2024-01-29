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
            Section(content: {
                Button("Practice", action: {})
            }, footer: {
                Text("Practice sounds before assigning one to an action.")
            })
            
            Section(content: {}, footer: {
                Text("Choose a switch action.")
            })
            
            Section(content: {
                ForEach(scannerItems, id: \.self) { scanner in
                    Button(scanner, action: {})
                }
            }, header: {
                Text("Scanner")
            })
            
            Section(content: {
                ForEach(systemItems, id: \.self) { scanner in
                    Button(scanner, action: {})
                }
            }, header: {
                Text("System")
            })
        }
    }
}

#Preview {
    ActionsView()
}
