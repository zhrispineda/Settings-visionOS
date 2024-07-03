//
//  AppNotificationsView.swift
//  Preferences
//
//  A template to have controls for an app's notification preferences.
//
//  Parameters:
//  appName: String
//

import SwiftUI

struct AppNotificationsView: View {
    // Variables
    @State private var allowNotificationsEnabled = true
    @State private var timeSensitiveNotificationsEnabled = true
    @State private var notificationCenterEnabled = true
    @State var bannersEnabled = true
    @State var soundsEnabled = true
    @State var badgesEnabled = true
    var appName: String = "App"
    
    var body: some View {
        CustomList(title: appName) {
            Section {
                Toggle("Allow Notifications", isOn: $allowNotificationsEnabled)
            }
            
            if appName != "Photos" {
                Section {
                    Toggle(isOn: $timeSensitiveNotificationsEnabled, label: {
                        HStack(spacing: 15) {
                            Image(systemName: "clock.fill")
                                .font(.title2)
                                .foregroundStyle(.yellow)
                            Text("Time Sensitive Notifications")
                        }
                    })
                } header: {
                    Text("Always Deliver Immediately")
                }
            }
            
            Section("Alerts") {
                Toggle("Notification Center", isOn: $notificationCenterEnabled)
                Toggle("Banners", isOn: $bannersEnabled)
            }
            
            
            if bannersEnabled {
                Section {
                    ListRowNavigationLabel(title: "Banner Style", subtitle: "Temporary", content: BannerStyleView())
                }
            }
            
            Section {
                if appName == "FaceTime" {
                    ListRowNavigationLabel(title: "Sounds", subtitle: "Reflection", content: SoundsView())
                } else {
                    Toggle("Sounds", isOn: $soundsEnabled)
                }
                Toggle("Badges", isOn: $badgesEnabled)
            }
            
            Section {
                ListRowNavigationLabel(title: "Notification Grouping", subtitle: "Automatic", content: NotificationGroupingView())
            }
            
            if appName == "Photos" {
                Section {
                    NavigationLink("Customize Notifications", destination: CustomizeNotificationsView())
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        AppNotificationsView()
    }
}
