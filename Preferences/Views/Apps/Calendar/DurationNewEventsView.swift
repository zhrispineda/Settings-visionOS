//
//  DurationNewEventsView.swift
//  Preferences
//
//  Settings > Apps > Calendar > Duration for New Events
//

import SwiftUI

struct DurationNewEventsView: View {
    // Variables
    @State private var selectedOption: String? = "1 hour"

    let options = ["15 minutes", "25 minutes", "30 minutes", "45 minutes", "50 minutes", "55 minutes", "1 hour", "1 hour, 30 minutes", "2 hours"]
    
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
                    Text("Duration for New Events").font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    DurationNewEventsView()
}
