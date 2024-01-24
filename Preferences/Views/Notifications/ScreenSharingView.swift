//
//  ScreenSharingView.swift
//  Preferences
//
//  Settings > Notifications > Screen Sharing
//

import SwiftUI

struct ScreenSharingView: View {
    // Variables
    @State private var allowNotificationsEnabled = false
    
    var body: some View {
        CustomList(title: "Screen Sharing") {
            Section(content: {
                Toggle("Allow Notifications", isOn: $allowNotificationsEnabled)
            }, footer: {
                Text("Allow notifications while using SharePlay or Screen Mirroring.")
            })
        }
    }
}

#Preview {
    ScreenSharingView()
}
