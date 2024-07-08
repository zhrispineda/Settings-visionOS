//
//  AlternateCalendarsView.swift
//  Preferences
//
//  Settings > Apps > Calendars > Alternate Calendars
//

import SwiftUI

struct AlternateCalendarsView: View {
    // Variables
    @State private var selected = "Off"
    let options = ["Off", "Chinese", "Hebrew", "Hijiri"]
    
    var body: some View {
        CustomList(title: "Alternate Calendars") {
            Picker("", selection: $selected) {
                ForEach(options, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.inline)
            .labelsHidden()
        }
    }
}

#Preview {
    NavigationStack {
        AlternateCalendarsView()
    }
}
