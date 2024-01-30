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
            Section(content: {
                Button(action: {}, label: {
                    HStack {
                        Text("Create New Gesture...")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.secondary)
                    }
                })
            }, footer: {
                Text("Saved gestures allow you to record gestures that can be activated from the menu in Actions > Gestures > Saved")
            })
        }
    }
}

#Preview {
    SavedGesturesView()
}
