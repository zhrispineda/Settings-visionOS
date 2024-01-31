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
        List(options, id: \.self) { option in
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
        .padding(.horizontal, 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Alternate Calendars").font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    AlternateCalendarsView()
}
