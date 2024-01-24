//
//  NotificationGroupingView.swift
//  Preferences
//
//  Settings > Notifications > [App] > Notification Grouping
//

import SwiftUI

struct NotificationGroupingView: View {
    // Variables
    @State private var selectedOption: String? = "Automatic"
    let options = ["Automatic", "By App", "Off"]
    
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
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                Text("Notification Grouping")
                    .font(.title)
                    .frame(maxWidth: .infinity)
                    .offset(x: -40)
            })
        }
    }
}

#Preview {
    NotificationGroupingView()
}
