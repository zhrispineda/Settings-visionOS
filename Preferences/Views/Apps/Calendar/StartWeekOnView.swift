//
//  StartWeekOnView.swift
//  Preferences
//
//  Settings > Apps > Calendar > Start Week On
//

import SwiftUI

struct StartWeekOnView: View {
    // Variables
    @State private var selected = "System Setting (Sunday)"
    let option = ["System Setting (Sunday)"]
    let options = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    var body: some View {
        CustomList(title: "Start Week On") {
            Section {
                Picker("", selection: $selected) {
                    ForEach(option, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            } header: {
                Text("Mirror System Setting")
            } footer: {
                Text("When selected, Calendar will use the setting from [Language & Region](#).")
            }
            
            Section {
                Picker("", selection: $selected) {
                    ForEach(options, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            } header: {
                Text("Calendar App Only")
            } footer: {
                Text("This setting will apply in Calendar only. Other apps will use the system setting.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        StartWeekOnView()
    }
}
