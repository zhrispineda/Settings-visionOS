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
                ListRowNavigationIconLabel(color: .orange, icon: "custom.app.connected.to.app.below.circle.fill", title: "Tracking", content: TrackingView())
            }
            
            // Apps Privacy Controls Section
            Section(content: {
                ListRowNavigationIconLabel(color: .blue, icon: "viewfinder.circle.fill", title: "Surroundings", content: AppPermissionView(permissionName: "Surroundings"))
                ListRowNavigationIconLabel(color: .blue, icon: "custom.hand.point.up.left.circle.fill", title: "Hand Structures & Movements", content: AppPermissionView(permissionName: "Hand Structures & Movements"))
                ListRowNavigationImageLabel(image: "applecontacts", title: "Contacts", content: AppPermissionView(permissionName: "Contacts"))
                ListRowNavigationImageLabel(image: "applecalendar", title: "Calendars", content: AppPermissionView(permissionName: "Calendars"))
                ListRowNavigationImageLabel(image: "applereminders", title: "Reminders", content: AppPermissionView(permissionName: "Reminders"))
                ListRowNavigationImageLabel(image: "applephotos", title: "Photos", content: AppPermissionView(permissionName: "Photos"))
                ListRowNavigationIconLabel(color: .blue, icon: "logo.bluetooth", title: "Bluetooth", content: AppPermissionView(permissionName: "Bluetooth"))
                ListRowNavigationSymbolLabel(color: .blue, symbol: "network", title: "Local Network", content: AppPermissionView(permissionName: "Local Network"))
                ListRowNavigationSymbolLabel(color: .orange, symbol: "mic.fill", title: "Microphone", content: AppPermissionView(permissionName: "Microphone"))
                ListRowNavigationSymbolLabel(color: .gray, symbol: "waveform", title: "Speech Recognition", content: AppPermissionView(permissionName: "Speech Recognition"))
                ListRowNavigationSymbolLabel(color: .gray, symbol: "camera.badge.ellipsis.fill", title: "Persona Virtual Camera", content: AppPermissionView(permissionName: "Persona Virtual Camera"))
                ListRowNavigationImageLabel(image: "applehome", title: "HomeKit", content: AppPermissionView(permissionName: "HomeKit"))
                ListRowNavigationImageLabel(image: "applemusic", title: "Media & Apple Music", content: AppPermissionView(permissionName: "Media & Apple Music"))
                ListRowNavigationImageLabel(image: "applefiles", title: "Files and Folders", content: AppPermissionView(permissionName: "Files and Folders"))
                ListRowNavigationSymbolLabel(color: .indigo, symbol: "moon.fill", title: "Focus", content: AppPermissionView(permissionName: "Focus"))
            }, footer: {
                Text("As apps request access, they will be added in the categories above.")
            })
            
            // Advertising Section
            Section {
                NavigationLink("Apple Advertising", destination: AppleAdvertisingView())
            }
        }
    }
}

#Preview {
    PrivacySecurityView()
}
