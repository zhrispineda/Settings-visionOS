//
//  SoundDetailView.swift
//  Preferences
//
//  Settings > Accessibility > Sound Recognition > Sounds > [Sound]
//

import SwiftUI

struct SoundDetailView: View {
    // Variables
    var title = String()
    @State private var soundEnabled = false
    
    var body: some View {
        CustomList(title: title) {
            Toggle(title, isOn: $soundEnabled)
            ListRowNavigationLabel(title: "Alert Tons", subtitle: "Tri-tone", content: AlertTonesView())
        }
    }
}

#Preview {
    SoundDetailView()
}
