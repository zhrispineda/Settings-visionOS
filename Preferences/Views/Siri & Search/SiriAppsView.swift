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
            ListRowNavigationImageLabel(image: "com.apple.mobilecal", title: "Calendar", content: SiriSearchAppView(appName: "Calendar"))
            ListRowNavigationImageLabel(image: "com.apple.DocumentsApp", title: "Files", content: SiriSearchAppView(appName: "Files"))
            ListRowNavigationImageLabel(image: "com.apple.Maps", title: "Maps", content: SiriSearchAppView(appName: "Maps"))
            ListRowNavigationImageLabel(image: "com.apple.news", title: "News", content: SiriSearchAppView(appName: "News"))
            ListRowNavigationImageLabel(image: "com.apple.mobileslideshow", title: "Photos", content: SiriSearchAppView(appName: "Photos"))
            ListRowNavigationImageLabel(image: "com.apple.reminders", title: "Reminders", content: SiriSearchAppView(appName: "Reminders"))
            ListRowNavigationImageLabel(image: "com.apple.mobilesafari", title: "Safari", content: SiriSearchAppView(appName: "Safari"))
            ListRowNavigationImageLabel(image: "com.apple.Preferences", title: "Settings", content: SiriSearchAppView(appName: "Settings"))
            ListRowNavigationImageLabel(image: "com.apple.shortcuts", title: "Shortcuts", content: SiriSearchAppView(appName: "Shortcuts"))
            ListRowNavigationImageLabel(image: "com.apple.RealityWidgets", title: "Widgets", content: SiriSearchAppView(appName: "Widgets"))
        }
    }
}

#Preview {
    NavigationStack {
        SiriAppsView()
    }
}
