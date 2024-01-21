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
            List {
                Section {
                    ListRowNavigationImageLabel(image: "applefreeform", title: "Freeform", content: AnyView(FreeformView()))
                    ListRowNavigationImageLabel(image: "applephotos", title: "Photos", content: AnyView(PhotosView()))
                    ListRowNavigationImageLabel(image: "applesafari", title: "Safari", content: AnyView(SafariView()))
                }
                
                Section(content: {
                    ListRowNavigationImageLabel(isRounded: false, image: "applecalendar", title: "Calendar", content: AnyView(CalendarView()))
                    ListRowNavigationImageLabel(isRounded: false, image: "applemaps", title: "Maps", content: AnyView(MapsView()))
                    ListRowNavigationImageLabel(isRounded: false, image: "applenews", title: "News", content: AnyView(NewsView()))
                    ListRowNavigationImageLabel(isRounded: false, image: "appleshortcuts", title: "Shortcuts")
                }, header: {
                    Text("Compatible Apps")
                })
            }
            .padding([.leading, .trailing], 45)
            .navigationTitle("Apps")
            .toolbar {
                ToolbarItem(placement: .principal, content: {
                    HStack {
                        Text("Apps")
                            .font(.title)
                    }
                    .frame(maxWidth: .infinity)
                })
            }
        }
    }
}

#Preview {
    AppsView()
}
