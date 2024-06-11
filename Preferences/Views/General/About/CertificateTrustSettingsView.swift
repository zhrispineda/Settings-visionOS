//
//  CertificateTrustSettingsView.swift
//  Settings-visionOS
//
//  Settings > General > About > Certificate Trust Settings
//

import SwiftUI

struct CertificateTrustSettingsView: View {
    var body: some View {
        CustomList(title: "Certificate Trust Settings") {
            Section(content: {
                ListRowLabel(title: "Trust Store Version", subtitle: "2024040500")
                ListRowLabel(title: "Trust Asset Version", subtitle: "1003")
            }, footer: {
                Text("[Learn more about trusted certificates](https://support.apple.com/en-us/HT209143)")
                    .tint(.cyan)
            })
        }
    }
}

#Preview {
    CertificateTrustSettingsView()
}
