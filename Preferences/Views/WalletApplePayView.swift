//
//  WalletApplePayView.swift
//  Settings-visionOS
//
//  Settings > Wallet & Apple Pay
//

import SwiftUI

struct WalletApplePayView: View {
    // Variables
    @State private var compatibleCardsEnabled = false
    
    var body: some View {
        CustomList(title: "Wallet & Apple Pay") {
            Section("Allow Wallet & Apple Pay to Access") {
                ListRowNavigationImageLabel(isRounded: true, image: "applewallet", title: "Notifications", subtitle: "Deliver Quietly", content: EmptyView())
            }
            
            // Compatible Cards Section
            Section {
                Toggle("Compatible Cards", isOn: $compatibleCardsEnabled)
            } header: {
                Text("Online Payments")
            } footer: {
                Text("Verifies that your saved cards in Safari AutoFill are compatible with Apple Pay and allows you to use them in Wallet.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        WalletApplePayView()
    }
}
