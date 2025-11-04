//
//  AppsView.swift
//  Settings-visionOS
//
//  Settings > Apps
//

import SwiftUI

struct AppsView: View {
    var body: some View {
        CustomList(title: "Apps") {
            Section {
                ListRowNavigationImageLabel(image: "com.apple.DocumentsApp", title: "Files", content: EmptyView())
                ListRowNavigationImageLabel(image: "com.apple.Passwords", title: "Passwords", content: PasswordsView())
                ListRowNavigationImageLabel(image: "com.apple.mobileslideshow", title: "Photos", content: PhotosView())
                ListRowNavigationImageLabel(image: "com.apple.mobilesafari", title: "Safari", content: SafariView())
            }
            
            Section("Compatible Apps") {
                ListRowNavigationImageLabel(image: "com.apple.mobilecal", title: "Calendar", content: CalendarView())
                ListRowNavigationImageLabel(image: "com.apple.Maps", title: "Maps", content: MapsView())
                ListRowNavigationImageLabel(image: "com.apple.news", title: "News", content: NewsView())
                ListRowNavigationImageLabel(image: "com.apple.shortcuts", title: "Shortcuts", content: ShortcutsView())
            }
        }
    }
}

#Preview {
    AppsView()
}
