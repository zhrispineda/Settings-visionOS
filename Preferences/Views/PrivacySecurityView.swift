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
                ListRowNavigationIconLabel(icon: "com.apple.graphic-icon.location", title: "Location Services", subtitle: "None", content: LocationServicesView())
                ListRowNavigationIconLabel(icon: "com.apple.graphic-icon.app-tracking-transparency", title: "Tracking", status: "0", content: TrackingView())
            }
            
            // Apps Privacy Controls Section
            Section {
                ListRowNavigationIconLabel(icon: "com.apple.mobilecal", title: "Calendar", subtitle: "None", content: AppPermissionView(permissionName: "Calendars"))
                ListRowNavigationImageLabel(image: "applecontacts", title: "Contacts", subtitle: "None", content: AppPermissionView(permissionName: "Contacts"))
                ListRowNavigationIconLabel(icon: "com.apple.DocumentsApp", title: "Files & Folders", subtitle: "None", content: AppPermissionView(permissionName: "Files & Folders"))
                ListRowNavigationIconLabel(icon: "com.apple.graphic-icon.focus", title: "Focus", subtitle: "None", content: AppPermissionView(permissionName: "Focus"))
                ListRowNavigationIconLabel(icon: "com.apple.graphic-icon.health-data", title: "Health Data", subtitle: "None", content: AppPermissionView(permissionName: "Health Data"))
                ListRowNavigationIconLabel(icon: "com.apple.HomeKit", title: "HomeKit",  subtitle: "None", content: AppPermissionView(permissionName: "HomeKit"))
                ListRowNavigationIconLabel(icon: "com.apple.Music", title: "Media & Apple Music", subtitle: "None", content: AppPermissionView(permissionName: "Media & Apple Music"))
                ListRowNavigationIconLabel(icon: "com.apple.mobileslideshow", title: "Photos", subtitle: "None", content: AppPermissionView(permissionName: "Photos"))
                ListRowNavigationIconLabel(icon: "com.apple.reminders", title: "Reminders", subtitle: "None", content: AppPermissionView(permissionName: "Reminders"))
            }
            
            Section {
                ListRowNavigationIconLabel(color: .blue, icon: "bluetooth", title: "Bluetooth", status: "0", content: AppPermissionView(permissionName: "Bluetooth"))
                ListRowNavigationIconLabel(color: .gray, icon: "camera.circle.fill", title: "Camera", status: "0", content: AppPermissionView(permissionName: "Camera"))
                ListRowNavigationIconLabel(color: .blue, icon: "custom.hand.point.up.left.circle.fill", title: "Hand Structures & Movements", status: "0", content: AppPermissionView(permissionName: "Hand Structures & Movements"))
                ListRowNavigationSymbolLabel(color: .blue, symbol: "network", title: "Local Network", status: "0", content: AppPermissionView(permissionName: "Local Network"))
                ListRowNavigationSymbolLabel(color: .orange, symbol: "mic.fill", title: "Microphone", status: "0", content: AppPermissionView(permissionName: "Microphone"))
//                ListRowNavigationImageLabel(image: "persona-camera-masked", title: "Persona Virtual Camera", status: "0", content: AppPermissionView(permissionName: "Persona Virtual Camera"))
                ListRowNavigationSymbolLabel(color: .gray, symbol: "waveform", title: "Speech Recognition", status: "0", content: AppPermissionView(permissionName: "Speech Recognition"))
                ListRowNavigationImageLabel(image: "worldsensing-masked", title: "Surroundings", status: "0", content: AppPermissionView(permissionName: "Surroundings"))
            }
            
            Section {
                ListRowNavigationSymbolLabel(color: .blue, symbol: "eye.trianglebadge.exclamationmark.fill", title: "Sensitive Content Warning", status: "Off", content: EmptyView())
            }
            
            // Advertising Section
            Section {
                ListRowNavigationSymbolLabel(color: .blue, symbol: "chart.bar.xaxis", title: "Analytics & Improvements", content: AnalyticsImprovementsView())
                ListRowNavigationSymbolLabel(color: .blue, symbol: "megaphone.fill", title: "Apple Advertising", content: AppleAdvertisingView())
            }
            
            //Section("Security") {}
        }
    }
}

#Preview {
    NavigationStack {
        PrivacySecurityView()
    }
}
