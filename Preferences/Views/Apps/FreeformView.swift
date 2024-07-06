//
//  FreeformView.swift
//  Settings-visionOS
//
//  Settings > Apps > Freeform
//

import SwiftUI

struct FreeformView: View {
    // Variables
    @State private var centerGuidesEnabled = true
    @State private var edgeGuidesEnabled = false
    @State private var spacingGuidesEnabled = true
    
    var body: some View {
        CustomList(title: "Freeform") {
            SiriSearchAccessNavigationLabel(appName: "Freeform")
            
            Section("Alignment Guides") {
                Toggle("Center Guides", isOn: $centerGuidesEnabled)
                Toggle("Edge Guides", isOn: $edgeGuidesEnabled)
                Toggle("Spacing Guides", isOn: $spacingGuidesEnabled)
            }
        }
    }
}

#Preview {
    NavigationStack {
        FreeformView()
    }
}
