//
//  SavedGesturesView.swift
//  Preferences
//
//  Settings > Accessibility > Switch Control > Saved Gestures
//

import SwiftUI

struct SavedGesturesView: View {
    var body: some View {
        CustomList(title: "Saved Gestures") {
            Section {
                Button {} label: {
                    NavigationLink("Create New Gesture...") {}
                }
            } footer: {
                Text("Saved gestures allow you to record gestures that can be activated from the menu in Actions > Gestures > Saved.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        SavedGesturesView()
    }
}
