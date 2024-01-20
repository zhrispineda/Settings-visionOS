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
        List {
            Section {
                Toggle("Time Zone Override", isOn: $timeZoneOverrideEnabled)
            }
            
            Section(content: {
                ListRowNavigationLabel(title: "Time Zone", subtitle: "\(timeZoneOverrideEnabled ? "Chicago" : "Off")", content: AnyView(TimeZoneView()))
                    .disabled(!timeZoneOverrideEnabled)
            }, footer: {
                Text("The Time Zone Override always shows event dates and times in the selected time zone.\n\nWhen off, events will display according to the time zone of your current location.")
            })
        }
        .padding([.leading, .trailing], 45)
        .navigationTitle("Time Zone Override")
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Time Zone Override")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    TimeZoneOverrideView()
        .padding()
}
