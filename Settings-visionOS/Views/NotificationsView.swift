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
                ListRowNavigationLabel(title: "Screen Sharing", subtitle: "Notifications Off", content: AnyView(EmptyView()))
                
                Section(content: {
                    NavigationLink(destination: {}, label: {
                        HStack(alignment: .center) {
                            Image(systemName: "questionmark.circle.fill")
                                .font(.largeTitle)
                            VStack(alignment: .leading) {
                                Text("FaceTime")
                                Text("Banners, Sounds, Badges")
                                    .font(.subheadline)
                                    .foregroundStyle(.secondary)
                            }
                        }
                    })
                }, header: {
                    Text("Notification Style")
                })
            }
            .padding([.leading, .trailing], 25)
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
