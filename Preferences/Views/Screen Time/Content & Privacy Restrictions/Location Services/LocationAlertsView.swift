//
//  LocationAlertsView.swift
//  Preferences
//
//  Settings > Screen Time > Content & Privacy Restrictions > Location Services > Location Alerts
//

import SwiftUI

struct LocationAlertsView: View {
    // Variables
    @State private var showMapLocationAlertsEnabled = true
    
    var body: some View {
        CustomList(title: "Location Alerts") {
            Toggle("Show Map in Location Alerts", isOn: $showMapLocationAlertsEnabled)
        }
    }
}

#Preview {
    LocationAlertsView()
}
