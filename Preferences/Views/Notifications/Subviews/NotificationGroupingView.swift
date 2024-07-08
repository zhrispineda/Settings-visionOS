//
//  NotificationGroupingView.swift
//  Preferences
//
//  Settings > Notifications > [App] > Notification Grouping
//

import SwiftUI

struct NotificationGroupingView: View {
    // Variables
    @State private var selected = "Automatic"
    let options = ["Automatic", "By App", "Off"]
    
    var body: some View {
        CustomList(title: "Notification Grouping") {
            Picker("", selection: $selected) {
                ForEach(options, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.inline)
            .labelsHidden()
        }
    }
}

#Preview {
    NavigationStack {
        NotificationGroupingView()
    }
}
