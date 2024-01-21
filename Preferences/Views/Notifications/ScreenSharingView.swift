//
//  ScreenSharingView.swift
//  Preferences
//
//  Settings > Notifications > Screen Sharing
//

import SwiftUI

struct ScreenSharingView: View {
    // Variables
    @State private var allowNotificationsEnabled = false
    
    var body: some View {
        List {
            Section(content: {
                Toggle("Allow Notifications", isOn: $allowNotificationsEnabled)
            }, footer: {
                Text("Allow notifications while using SharePlay or Screen Mirroring.")
            })
        }
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Screen Sharing")
                        .font(.title)
                        .offset(x: -40)
                }
                .frame(maxWidth: .infinity)
            })
        }
    }
}

#Preview {
    ScreenSharingView()
}
