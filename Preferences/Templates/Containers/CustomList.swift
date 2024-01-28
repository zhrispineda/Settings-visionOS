//
//  CustomList.swift
//  Preferences
//
//  Template for a List that has commonly used modifiers.
//
//  Parameters:
//  title: String
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
    @ViewBuilder let content: Content
    
    var body: some View {
        List {
            content
        }
        .navigationTitle(title)
        // Horizontal list row padding
        .padding(.horizontal, 45)
        // Horizontally-centered title text
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                Text(title)
                    .font(.title2)
                    .frame(maxWidth: .infinity)
                    .offset(x: parentViews.contains(title) ? 0 : (editEnabled ? 5 : -40)) // Adjust for back button if parent view or not
            })
            if editEnabled {
                ToolbarItem(placement: .topBarTrailing, content: {
                    EditButton()
                })
            }
        }
    }
}
