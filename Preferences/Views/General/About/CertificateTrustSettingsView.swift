//
//  CertificateTrustSettingsView.swift
//  Settings-visionOS
//
//  Settings > General > About > Certificate Trust Settings
//

import SwiftUI

struct CertificateTrustSettingsView: View {
    var body: some View {
        List {
            Section(content: {
                ListRowLabel(title: "Trust Store Version", subtitle: "2023071300")
                ListRowLabel(title: "Trust Asset Version", subtitle: "1002")
            }, footer: {
                Text("[Learn more about trusted certificates](https://support.apple.com/en-us/HT209143)")
                    .tint(.cyan)
            })
        }
        .padding([.leading, .trailing], 45)
        .navigationTitle("Certificate Trust Settings")
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Certificate Trust Settings")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    CertificateTrustSettingsView()
}
