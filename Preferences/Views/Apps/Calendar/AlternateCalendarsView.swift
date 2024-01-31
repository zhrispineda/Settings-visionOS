//
//  AlternateCalendarsView.swift
//  Preferences
//
//  Settings > Apps > Calendars > Alternate Calendars
//

import SwiftUI

struct AlternateCalendarsView: View {
    // Variables
    @State private var selectedOption: String? = "Off"

    let options = ["Off", "Chinese", "Hebrew", "Hijiri"]
    
    var body: some View {
        CustomList(title: "Alternate Calendars") {
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
        }
    }
}

#Preview {
    AlternateCalendarsView()
}
