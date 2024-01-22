//
//  CustomizeNotificationsView.swift
//  Preferences
//
//  Settings > Notifications > Photos > Customize Notifications
//

import SwiftUI

struct CustomizeNotificationsView: View {
    // Variables
    @State private var memoriesEnabled = true
    
    var body: some View {
        List {
            Toggle("Memories", isOn: $memoriesEnabled)
        }
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Customize Notifications")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    CustomizeNotificationsView()
}
