//
//  CustomList.swift
//  Preferences
//
//  Template for a List that has commonly used modifiers.
//
//  Parameters:
//  title: String, editEnabled: Bool
//
//  Example:
//  CustomList(title: "My Navigation Title") {
//      content
//  }
//

import SwiftUI

struct CustomList<Content: View>: View {
    // Variables
    let parentViews = ["General", "Apps", "People", "Environments", "Notifications", "Screen Time", "Accessibility", "Control Center", "Siri & Search", "Privacy & Security", "Display", "Apple Vision Pro Storage", "Game Center", "Wallet & Apple Pay", "Developer"]
    var title: String = String()
    @State var editEnabled = false
    @State private var editMode: EditMode = .inactive
    @ViewBuilder let content: Content
    
    var body: some View {
        List {
            content
        }
        // Horizontal list row padding
        .padding(.horizontal, 45)
        // Horizontally-centered title text
        .toolbar {
            ToolbarItem(placement: .secondaryAction) {
                Text(title)
                    .font(.title2)
            }
            if editEnabled {
                ToolbarItem(placement: .topBarTrailing) {
                    EditButton()
                }
            }
        }
        .environment(\.editMode, $editMode)
        .navigationDestination(for: String.self) { key in
            RouteRegistry.shared.view(for: key)
        }
    }
}

#Preview {
    NavigationStack {
        CustomList(title: "Test", editEnabled: false) {
            Text("Hello, world!")
        }
    }
}
