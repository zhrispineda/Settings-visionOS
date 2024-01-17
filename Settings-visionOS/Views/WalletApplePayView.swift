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
        List {
            // Compatible Cards Section
            Section(content: {
                Toggle("Compatible Cards", isOn: $compatibleCardsEnabled)
            }, header: {
                Text("Online Payments")
            }, footer: {
                Text("Verifies that your saved cards in Safari AutoFill are compatible with Apple Pay and allows you to use them in Wallet.")
            })
        }
        .padding([.leading, .trailing], 30)
        .navigationTitle("Wallet & Apple Pay")
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Wallet & Apple Pay")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
            })
        }
    }
}

#Preview {
    WalletApplePayView()
}
