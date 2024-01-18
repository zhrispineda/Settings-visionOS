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
                    ListRowNavigationImageLabel(image: "applephotos", title: "Photos")
                    ListRowNavigationImageLabel(image: "applesafari", title: "Safari")
                }
                
                Section(content: {
                    ListRowNavigationImageLabel(isRounded: false, image: "applecalendar", title: "Calendar")
                    ListRowNavigationImageLabel(isRounded: false, image: "applemaps", title: "Maps")
                    ListRowNavigationImageLabel(isRounded: false, image: "applenews", title: "News")
                    ListRowNavigationImageLabel(isRounded: false, image: "appleshortcuts", title: "Shortcuts")
                }, header: {
                    Text("Compatible Apps")
                })
            }
            .padding([.leading, .trailing], 30)
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
