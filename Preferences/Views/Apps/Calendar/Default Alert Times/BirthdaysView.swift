//
//  BirthdaysView.swift
//  Preferences
//
//  Settings > Apps > Calendar > Default Alert  Times > Birthdays
//

import SwiftUI

struct BirthdaysView: View {
    // Variables
    @State private var selected = "None"
    let options = ["None", "On day of event (9 AM)", "1 day before (9 AM)", "2 days before (9 AM)", "1 week before"]
    
    var body: some View {
        CustomList(title: "Birthdays") {
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
        BirthdaysView()
    }
}
