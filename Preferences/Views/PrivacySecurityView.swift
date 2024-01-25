//
//  PrivacySecurityView.swift
//  Settings-visionOS
//
//  Settings > Privacy & Security
//

import SwiftUI

struct PrivacySecurityView: View {
    var body: some View {
        CustomList(title: "Privacy & Security") {
            // Tracking Section
            Section {
                ListRowNavigationIconLabel(color: .orange, icon: "custom.app.connected.to.app.below.circle.fill", title: "Tracking", content: EmptyView())
            }
            
            // Apps Privacy Controls Section
            Section(content: {
                ListRowNavigationIconLabel(color: .blue, icon: "viewfinder.circle.fill", title: "Surroundings", content: EmptyView())
                ListRowNavigationIconLabel(color: .blue, icon: "custom.hand.point.up.left.circle.fill", title: "Hand Structures & Movements", content: EmptyView())
                ListRowNavigationImageLabel(image: "applecalendar", title: "Calendars", content: EmptyView())
                ListRowNavigationImageLabel(image: "applereminders", title: "Reminders", content: EmptyView())
                ListRowNavigationImageLabel(image: "applephotos", title: "Photos", content: EmptyView())
                ListRowNavigationIconLabel(color: .blue, icon: "logo.bluetooth", title: "Test", content: EmptyView())
                ListRowNavigationSymbolLabel(color: .blue, symbol: "network", title: "Local Network", content: EmptyView())
                ListRowNavigationSymbolLabel(color: .orange, symbol: "mic.fill", title: "Microphone", content: EmptyView())
                ListRowNavigationSymbolLabel(color: .gray, symbol: "waveform", title: "Speech Recognition", content: EmptyView())
                ListRowNavigationSymbolLabel(color: .gray, symbol: "camera.badge.ellipsis.fill", title: "Persona Virtual Camera", content: EmptyView())
                ListRowNavigationImageLabel(image: "applehome", title: "Home", content: EmptyView())
                ListRowNavigationImageLabel(image: "applemusic", title: "Media & Apple Music", content: EmptyView())
                ListRowNavigationImageLabel(image: "applefiles", title: "Files and Folders", content: EmptyView())
                ListRowNavigationSymbolLabel(color: .indigo, symbol: "moon.fill", title: "Focus", content: EmptyView())
            }, footer: {
                Text("As apps request access, they will be added in the categories above.")
            })
            
            // Advertising Section
            Section {
                NavigationLink("Apple Advertising", destination: {})
            }
        }
    }
}

#Preview {
    PrivacySecurityView()
}
