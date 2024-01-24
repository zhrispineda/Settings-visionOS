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
            List {
                Section {
                    ListRowNavigationLabel(title: "Screen Sharing", subtitle: "Notifications Off", content: ScreenSharingView())
                }
                
                Section(content: {
                    ListRowNavigationImageLabel(image: "appicon", title: "FaceTime", subtitle: "Banners, Sounds, Badges", content: AnyView(AppNotificationsView(appName: "FaceTime")))
                    ListRowNavigationImageLabel(image: "applegamecenter", title: "Game Center", subtitle: "Banners, Sounds, Badges", content: AnyView(AppNotificationsView(appName: "Game Center")))
                    ListRowNavigationImageLabel(image: "applehome", title: "Home", subtitle: "Deliver Quietly", content: AnyView(AppNotificationsView(bannersEnabled: false, soundsEnabled: false, badgesEnabled: false, appName: "Home")))
                    ListRowNavigationImageLabel(image: "applephotos", title: "Photos", subtitle: "Banners, Sounds, Badges", content: AnyView(AppNotificationsView(appName: "Photos")))
                    ListRowNavigationImageLabel(image: "applewallet", title: "Wallet", subtitle: "Deliver Quietly", content: AnyView(AppNotificationsView(bannersEnabled: false, soundsEnabled: false, badgesEnabled: false, appName: "Wallet")))
                }, header: {
                    Text("Notification Style")
                })
            }
            .padding([.leading, .trailing], 45)
            .navigationTitle("Notifications")
            .toolbar {
                ToolbarItem(placement: .principal, content: {
                    HStack {
                        Text("Notifications")
                            .font(.title)
                    }
                    .frame(maxWidth: .infinity)
                })
            }
        }
    }
}

#Preview {
    NotificationsView()
}
