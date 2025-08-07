//
//  LocationServicesView.swift
//  Preferences
//
//  Settings > Privacy & Security > Location Services
//

import SwiftUI

struct LocationServicesView: View {
    // Variables
    @AppStorage("LocationServicesEnabled") private var locationServicesEnabled = true
    
    var body: some View {
        CustomList(title: "Location Services") {
            Section {
                Toggle("Location Services", isOn: $locationServicesEnabled)
                NavigationLink("Location Alerts", destination: LocationAlertsView())
            } footer: {
                Text("Using Location Services requires turning on Wi-Fi.\n\nLocation Services uses Bluetooth and crowd-sourced Wi-Fi hotspot locations to determine your approximate location. [About Location Services and Privacy...](#)")
            }
            
            Section {
                ListRowNavigationIconLabel(icon: "com.apple.application-icon.siri", title: "Siri", status: "When Shared", content: LocationDetailView(title: "Siri & Dictation"))
                ListRowNavigationIconLabel(icon: "gear.circle.fill", title: "System Services", status: "location.fill", content: SystemServicesView())
            } footer: {
                VStack(alignment: .leading) {
                    Text("System services that have requested access to your location will appear here.\n")
                    HStack(spacing: 15) {
                        Image(systemName: "location.fill")
                            .foregroundStyle(.purple)
                            .font(.headline)
                        Text("A purple arrow indicates that an item has recently used your location.")
                    }
                    .padding(.trailing)
                    .padding(.bottom, 5)
                    
                    HStack(spacing: 15) {
                        Image(systemName: "location.fill")
                            .foregroundStyle(.gray)
                            .font(.headline)
                        Text("A gray arrow indicates that an item has used your location in the last 24 hours.")
                    }
                    .padding(.trailing)
                }
                .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    NavigationStack {
        LocationServicesView()
    }
}
