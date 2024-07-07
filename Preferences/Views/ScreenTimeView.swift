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
            Section("Restrictions") {
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
            }
            
            Section {
                Button("Lock Screen Time Settings") {}
            } footer: {
                Text("Use a passcode to secure Screen Time settings.")
            }
            
            Section {
                Button("Use with Other Devices") {}
            } footer: {
                Text("Sign in to iCloud to report your screen time on any iPad or iPhone, or set up Family Sharing to use Screen Time with your family's devices.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        ScreenTimeView()
    }
}
