//
//  ScreenTimeView.swift
//  Settings-visionOS
//
//  Settings > Screen Time
//

import SwiftUI

struct ScreenTimeView: View {
    var body: some View {
        List {
            Section(content: {
                NavigationLink(destination: {}, label: {
                    HStack {
                        Image("custom.nosign.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white, .red.gradient)
                        VStack(alignment: .leading) {
                            Text("Content & Privacy Restrictions")
                            Text("Block inappropriate content")
                                .foregroundStyle(.secondary)
                        }
                    }
                })
            }, header: {
                Text("Restrictions")
            })
            
            Section(content: {
                Button("Lock Screen Time Settings", action: {})
            }, footer: {
                Text("Use a passcode to secure Screen Time settings.")
            })
            
            Section(content: {
                Button("Use with Other Devices", action: {})
            }, footer: {
                Text("Sign in to iCloud to report your screen time on any iPad or iPhone, or set up Family Sharing to use Screen Time with your family's devices.")
            })
        }
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Screen Time")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
            })
        }
    }
}

#Preview {
    ScreenTimeView()
}
