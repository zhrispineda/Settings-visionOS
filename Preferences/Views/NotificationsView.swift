//
//  NotificationsView.swift
//  Settings-visionOS
//
//  Settings > Notifications
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationStack {
            CustomList(title: "Notifications") {
                Section {
                    ListRowNavigationLabel(title: "View Sharing", subtitle: "Notifications Off", content: ScreenSharingView())
                }
                
                Section("Notification Style") {
                    ListRowNavigationIconLabel(icon: "com.apple.facetime", title: "FaceTime", subtitle: "Banners, Sounds, Badges", content: AppNotificationsView(appName: "FaceTime"))
                    ListRowNavigationIconLabel(icon: "com.apple.HomeKit", title: "Home", subtitle: "Deliver Quietly", content: AppNotificationsView(bannersEnabled: false, soundsEnabled: false, badgesEnabled: false, appName: "Home"))
                    ListRowNavigationIconLabel(icon: "com.apple.phone", title: "Phone", subtitle: "Banners, Sounds, Badges", content: AppNotificationsView(appName: "Phone"))
                    ListRowNavigationIconLabel(icon: "com.apple.mobileslideshow", title: "Photos", subtitle: "Banners, Sounds, Badges", content: AppNotificationsView(appName: "Photos"))
                    ListRowNavigationIconLabel(icon: "com.apple.PassbookUISceneService", title: "Wallet", subtitle: "Deliver Quietly", content: AppNotificationsView(bannersEnabled: false, soundsEnabled: false, badgesEnabled: false, appName: "Wallet"))
                }
            }
        }
    }
}

#Preview {
    NotificationsView()
}
