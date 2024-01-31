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
        CustomList(title: "Notification Grouping") {
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
    NotificationGroupingView()
}
