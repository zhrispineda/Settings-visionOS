//
//  TrackingView.swift
//  Preferences
//
//  Settings > Privacy & Security > Tracking
//

import SwiftUI

struct TrackingView: View {
    // Variables
    @State private var allowAppsRequestTrack = true
    
    var body: some View {
        CustomList(title: "Tracking") {
            Section {
                Toggle("Allow Apps to Request to Track", isOn: $allowAppsRequestTrack)
            } footer: {
                Text("Allow apps to ask to track your activity across other companies‘ apps and websites. When this is off, new app tracking requests are automatically denied. [Learn more...](#)")
            }
            
            Section {} footer: {
                Text("Apps that have asked for permission to track your activity with an identifier will appear here. Tracking activity is blocked by apps that you‘ve denied access to.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        TrackingView()
    }
}
