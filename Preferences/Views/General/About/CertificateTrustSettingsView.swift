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
            Section {
                LabeledContent("Trust Store Version", value: "2024051500")
                LabeledContent("Trust Asset Version", value: "1005")
            } footer: {
                Text("[Learn more about trusted certificates](https://support.apple.com/en-us/HT209143)")
            }
        }
    }
}

#Preview {
    NavigationStack {
        CertificateTrustSettingsView()
    }
}
