//
//  MapsView.swift
//  Preferences
//
//  Settings > Apps > Maps
//

import SwiftUI

struct MapsView: View {
    // Variables
    @State private var selected = "Driving"
    let options = ["Driving", "Walking", "Transit", "Cycling"]
    @State private var airQualityIndexEnabled = true
    @State private var weatherConditionsEnabled = true
    @State private var alwaysEnglishEnabled = true
    
    var body: some View {
        CustomList(title: "Maps") {
            SiriSearchAccessNavigationLabel(appName: "Maps")
            
            Section {
                Picker("", selection: $selected) {
                    ForEach(options, id: \.self) {
                        Text($0)
                    }
                }
                .labelsHidden()
                .pickerStyle(.inline)
            } header: {
                Text("Preferred Type of Travel")
            } footer: {
                Text("When available, this transportation time will be used to get directions and to estimate your travel time.")
            }
            
            Section("Directions") {
                NavigationLink("Driving", destination: DrivingView())
                NavigationLink("Walking", destination: WalkingView())
                NavigationLink("Transit", destination: TransitView())
                NavigationLink("Cycling", destination: CyclingView())
            }
            
            Section("Climate") {
                Toggle("Air Quality Index", isOn: $airQualityIndexEnabled)
                Toggle("Weather Conditions", isOn: $weatherConditionsEnabled)
            }
            
            Section("Map Labels") {
                Toggle("Always in English", isOn: $alwaysEnglishEnabled)
            }
        }
    }
}

#Preview {
    NavigationStack {
        MapsView()
    }
}
