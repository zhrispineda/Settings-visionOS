//
//  AppsView.swift
//  Settings-visionOS
//
//  Settings > Apps
//

import SwiftUI

struct AppsView: View {
    var body: some View {
        NavigationStack {
            CustomList(title: "Apps") {
                Section {
                    ListRowNavigationImageLabel(image: "applepasswords", title: "Passwords", content: PasswordsView())
                    //ListRowNavigationImageLabel(image: "applefreeform", title: "Freeform", content: FreeformView())
                    ListRowNavigationImageLabel(image: "applephotos", title: "Photos", content: PhotosView())
                    ListRowNavigationImageLabel(image: "applesafari", title: "Safari", content: SafariView())
                }
                
                Section("Compatible Apps") {
                    ListRowNavigationImageLabel(isRounded: false, image: "applecalendar", title: "Calendar", content: CalendarView())
                    ListRowNavigationImageLabel(isRounded: false, image: "applemaps", title: "Maps", content: MapsView())
                    ListRowNavigationImageLabel(isRounded: false, image: "applenews", title: "News", content: NewsView())
                    ListRowNavigationImageLabel(isRounded: false, image: "appleshortcuts", title: "Shortcuts", content: ShortcutsView())
                }
            }
        }
    }
}

#Preview {
    AppsView()
}
