//
//  LocationServicesView.swift
//  Preferences
//
//  Settings > Screen Time > Content & Privacy Restrictions > Location Services
//

import SwiftUI

struct LocationServicesView: View {
    // Variables
    @State private var selected = "Allow Changes"
    let options = ["Allow Changes", "Don't Allow Changes"]
    @State private var locationServicesEnabled = true
    
    var body: some View {
        CustomList(title: "Location Services") {
            Section(content: {
                ForEach(options, id: \.self) { option in
                    Button(action: {
                        withAnimation {
                            selected = option
                        }
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selected == option ? "checkmark" : "")")
                        }
                    })
                }
            }, footer: {
                Text("Disallowing changes locks the settings shown below and prevents new apps from using location services.")
            })
            
            Section(content: {
                Toggle("Location Services", isOn: $locationServicesEnabled)
                NavigationLink("Location Alerts", destination: LocationAlertsView())
            }, footer: {
                Text("Using Location Services requires turning on Wi-Fi.\n\nLocation Services uses Bluetooth and crowd-sourced Wi-Fi hotspot locations to determine your approximate location. [About Location Services and Privacy...](#)").tint(.cyan)
            })
            
            Section(content: {
                ListRowNavigationLabel(title: "BulletinBoard.framework", subtitle: "When Shared", content: LocationDetailView(title: "BulletinBoard.framework"))
                ListRowNavigationLabel(title: "MobileWiFi.framework", subtitle: "When Shared", content: LocationDetailView(title: "MobileWiFi.framework"))
                ListRowNavigationImageLabel(isRounded: true, image: "applesiri", title: "Siri & Dictation", status: "When Shared", content: LocationDetailView(title: "Siri & Dictation"))
                ListRowNavigationLabel(title: "SystemCustomization.bundle", subtitle: "When Shared", icon: "location.fill", content: LocationDetailView(title: "SystemCustomization.bundle"))
                ListRowNavigationLabel(title: "Traffic.bundle", subtitle: "When Shared", content: LocationDetailView(title: "Traffic.bundle"))
                ListRowNavigationIconLabel(icon: "gear.circle.fill", title: "System Services", status: "location.fill", content: SystemServicesView())
            }, footer: {
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
            })
        }
    }
}

#Preview {
    NavigationStack {
        LocationServicesView()
    }
}
