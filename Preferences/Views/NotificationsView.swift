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
                    ListRowNavigationLabel(title: "Screen Sharing", subtitle: "Notifications Off", content: ScreenSharingView())
                }
                
                Section("Notification Style") {
                    ListRowNavigationImageLabel(image: "applefacetime", title: "FaceTime", subtitle: "Banners, Sounds, Badges", content: AppNotificationsView(appName: "FaceTime"))
                    ListRowNavigationImageLabel(image: "applegamecenter", title: "Game Center", subtitle: "Banners, Sounds, Badges", content: AppNotificationsView(appName: "Game Center"))
                    ListRowNavigationImageLabel(image: "applehome", title: "Home", subtitle: "Deliver Quietly", content: AppNotificationsView(bannersEnabled: false, soundsEnabled: false, badgesEnabled: false, appName: "Home"))
                    ListRowNavigationImageLabel(image: "applephotos", title: "Photos", subtitle: "Banners, Sounds, Badges", content: AppNotificationsView(appName: "Photos"))
                    ListRowNavigationImageLabel(image: "applewallet", title: "Wallet", subtitle: "Deliver Quietly", content: AppNotificationsView(bannersEnabled: false, soundsEnabled: false, badgesEnabled: false, appName: "Wallet"))
                }
            }
        }
    }
}

#Preview {
    NotificationsView()
}
