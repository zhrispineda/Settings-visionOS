//
//  AppsView.swift
//  Preferences
//
//  Settings > Siri & Search > Apps
//

import SwiftUI

struct SiriAppsView: View {
    var body: some View {
        CustomList(title: "Apps") {
            ListRowNavigationImageLabel(isRounded: false, image: "applecalendar", title: "Calendar", content: SiriSearchAppView(appName: "Calendar"))
            ListRowNavigationImageLabel(isRounded: true, image: "applefiles", title: "Files", content: SiriSearchAppView(appName: "Files"))
            ListRowNavigationImageLabel(isRounded: true, image: "applefreeform", title: "Freeform", content: SiriSearchAppView(appName: "Freeform"))
            ListRowNavigationImageLabel(isRounded: false, image: "applemaps", title: "Maps", content: SiriSearchAppView(appName: "Maps"))
            ListRowNavigationImageLabel(isRounded: false, image: "applenews", title: "News", content: SiriSearchAppView(appName: "News"))
            ListRowNavigationImageLabel(isRounded: true, image: "applephotos", title: "Photos", content: SiriSearchAppView(appName: "Photos"))
            ListRowNavigationImageLabel(isRounded: false, image: "applereminders", title: "Reminders", content: SiriSearchAppView(appName: "Reminders"))
            ListRowNavigationImageLabel(isRounded: true, image: "applesafari", title: "Safari", content: SiriSearchAppView(appName: "Safari"))
            ListRowNavigationImageLabel(isRounded: true, image: "applesettings", title: "Settings", content: SiriSearchAppView(appName: "Settings"))
            ListRowNavigationImageLabel(isRounded: false, image: "appleshortcuts", title: "Shortcuts", content: SiriSearchAppView(appName: "Shortcuts"))
        }
    }
}

#Preview {
    NavigationStack {
        SiriAppsView()
    }
}
