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
    let parentViews = ["General"]
    var title: String = String()
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
                    .offset(x: parentViews.contains(title) ? 0 : -40) // Adjust for back button
            })
        }
    }
}
