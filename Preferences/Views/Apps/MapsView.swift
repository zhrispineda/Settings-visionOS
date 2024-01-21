//
//  MapsView.swift
//  Preferences
//
//  Settings > Apps > Maps
//

import SwiftUI

struct MapsView: View {
    // Variables
    @State private var selectedOption: String? = "Driving"
    let options = ["Driving", "Walking", "Transit", "Cycling"]
    
    @State private var airQualityIndexEnabled = true
    @State private var weatherConditionsEnabled = true
    @State private var alwaysEnglishEnabled = true
    
    var body: some View {
        List {
            SiriSearchAccessNavigationLabel(appName: "Maps")
            
            Section(content: {
                ForEach(options, id: \.self) { option in
                    Button(action: { selectedOption = option }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            if selectedOption == option {
                                Image(systemName: "checkmark")
                            }
                        }
                    })
                }
            }, header: {
                Text("Preferred Type of Travel")
            }, footer: {
                Text("When available, this transportation time will be used to get directions and to estimate your travel time.")
            })
            
            Section(content: {
                NavigationLink("Driving", destination: DrivingView())
                NavigationLink("Walking", destination: WalkingView())
                NavigationLink("Transit", destination: TransitView())
                NavigationLink("Cycling", destination: CyclingView())
            }, header: {
                Text("Directions")
            })
            
            Section(content: {
                Toggle("Air Quality Index", isOn: $airQualityIndexEnabled)
                Toggle("Weather Conditions", isOn: $weatherConditionsEnabled)
            }, header: {
                Text("Climate")
            })
            
            Section(content: {
                Toggle("Always in English", isOn: $alwaysEnglishEnabled)
            }, header: {
                Text("Map Labels")
            })
        }
        .navigationTitle("Maps")
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Maps")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    MapsView()
        .padding()
}
