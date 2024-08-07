//
//  DurationNewEventsView.swift
//  Preferences
//
//  Settings > Apps > Calendar > Duration for New Events
//

import SwiftUI

struct DurationNewEventsView: View {
    // Variables
    @State private var selected = "1 hour"
    let options = ["15 minutes", "25 minutes", "30 minutes", "45 minutes", "50 minutes", "55 minutes", "1 hour", "1 hour, 30 minutes", "2 hours"]
    
    var body: some View {
        CustomList(title: "Duration for New Events") {
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
        DurationNewEventsView()
    }
}
