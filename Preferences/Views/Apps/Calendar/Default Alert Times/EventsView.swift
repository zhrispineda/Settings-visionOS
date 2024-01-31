//
//  EventsView.swift
//  Preferences
//
//  Settings > Apps > Calendar > Default Alert Times > Events
//

import SwiftUI

struct EventsView: View {
    // Variables
    @State private var selectedOption: String? = "None"

    let options = ["None", "At time of event", "5 minutes before", "10 minutes before", "15 minutes before", "30 minutes before", "1 hour before", "2 hours before", "1 day before", "2 days before", "1 week before"]
    
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
                    Text("Events").font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    EventsView()
}
