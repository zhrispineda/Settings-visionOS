//
//  AllDayEventsView.swift
//  Preferences
//
//  Settings > Apps > Calendar > Default Alert Times > All-Day Events
//

import SwiftUI

struct AllDayEventsView: View {
    // Variables
    @State private var selectedOption: String? = "None"

    let options = ["None", "On day of event (9 AM)", "1 day before (9 AM)", "2 days before (9 AM)", "1 week before"]
    
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
                    Text("All-Day Events").font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    AllDayEventsView()
}
