//
//  TimeZoneOverrideView.swift
//  Preferences
//
//  Settings > Apps > Calendar > Time Zone Override
//

import SwiftUI

struct TimeZoneOverrideView: View {
    // Variables
    @State private var timeZoneOverrideEnabled = false
    
    var body: some View {
        CustomList(title: "Time Zone Override") {
            Section {
                Toggle("Time Zone Override", isOn: $timeZoneOverrideEnabled)
            }
            
            Section(content: {
                ListRowNavigationLabel(title: "Time Zone", subtitle: "\(timeZoneOverrideEnabled ? "Chicago" : "Off")", content: TimeZoneView())
                    .disabled(!timeZoneOverrideEnabled)
            }, footer: {
                Text("The Time Zone Override always shows event dates and times in the selected time zone.\n\nWhen off, events will display according to the time zone of your current location.")
            })
        }
    }
}

#Preview {
    TimeZoneOverrideView()
        .padding()
}
