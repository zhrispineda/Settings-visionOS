//
//  ScreenTimeView.swift
//  Settings-visionOS
//
//  Settings > Screen Time
//

import SwiftUI

struct ScreenTimeView: View {
    var body: some View {
        CustomList(title: "Screen Time") {
            Section(content: {
                NavigationLink(destination: ContentPrivacyRestrictionsView(), label: {
                    HStack {
                        Image("custom.nosign.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white, .red.gradient)
                        VStack(alignment: .leading) {
                            Text("Content & Privacy Restrictions")
                            Text("Block inappropriate content")
                                .font(.footnote)
                                .foregroundStyle(.secondary)
                        }
                    }
                })
            }, header: {
                Text("Restrictions")
            })
            
            Section(content: {
                // TODO: Popover
                Button("Lock Screen Time Settings", action: {})
            }, footer: {
                Text("Use a passcode to secure Screen Time settings.")
            })
            
            Section(content: {
                // TODO: Popover
                Button("Use with Other Devices", action: {})
            }, footer: {
                Text("Sign in to iCloud to report your screen time on any iPad or iPhone, or set up Family Sharing to use Screen Time with your family's devices.")
            })
        }
    }
}

#Preview {
    ScreenTimeView()
}
