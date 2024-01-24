//
//  CustomizeNotificationsView.swift
//  Preferences
//
//  Settings > Notifications > Photos > Customize Notifications
//

import SwiftUI

struct CustomizeNotificationsView: View {
    // Variables
    @State private var memoriesEnabled = true
    
    var body: some View {
        CustomList(title: "Customize Notifications") {
            Toggle("Memories", isOn: $memoriesEnabled)
        }
    }
}

#Preview {
    CustomizeNotificationsView()
}
