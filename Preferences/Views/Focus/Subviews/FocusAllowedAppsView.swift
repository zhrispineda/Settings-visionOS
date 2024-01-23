//
//  AllowedAppsView.swift
//  Preferences
//
//  Settings > Focus > [Focus] > Allowed Apps
//

import SwiftUI

struct FocusAllowedAppsView: View {
    // Variables
    var focusName = String()
    let notificationsFromSelections = ["Allow Some Apps", "Silence Some Apps"]
    @State private var notificationsFromSelection = "Allow Some Apps"
    @State private var timeSensitiveNotificationsEnabled = false
    
    var body: some View {
        List {
            Section {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Notifications")
                        Text("When \(focusName == "Do Not Disturb" ? "Do Not Disturb" : "\(focusName) Focus") in on, notifications from \(notificationsFromSelection == "Allow Some Apps" ? "apps you select will be allowed. All others" : "selected apps") will be silenced and sent to Notification Center.")
                            .foregroundStyle(.secondary)
                            .font(.subheadline)
                    }
                    Picker("", selection: $notificationsFromSelection) {
                        ForEach(notificationsFromSelections, id: \.self) { selection in
                            Text(selection)
                        }
                    }
                }
            }
            
            Section {
                VStack {
                    ZStack {
                        Circle()
                            .frame(width: 65, height: 65)
                            .opacity(0.2)
                        Image(systemName: "plus")
                            .font(.title)
                            
                    }
                    Text("Add Apps")
                        .font(.subheadline)
                        .fontWeight(.medium)
                }
            }
            
            Section {
                Toggle(isOn: $timeSensitiveNotificationsEnabled, label: {
                    Text("Time Sensitive Notifications")
                    Text("Allow apps \(focusName == "Personal" ? "not in your allowed list" : "that are silenced") to send notifications marked as Time Sensitive immediately.")
                })
            }
        }
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Notifications")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    FocusAllowedAppsView()
}
