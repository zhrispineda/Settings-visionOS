//
//  SafariAdvancedView.swift
//  Preferences
//
//  Settings > Apps > Safari > Advanced
//

import SwiftUI

struct SafariAdvancedView: View {
    // Variables
    @State private var blockAllCookiesEnabled = false
    @State private var showingBlockCookiesAlert = false
    @State private var privacyPreservingAdMeasurementEnabled = true
    @State private var checkForApplePayEnabled = true
    @State private var javaScriptEnabled = true
    
    var body: some View {
        List {
            Section {
                NavigationLink("Website Data", destination: WebsiteDataView())
            }
            
            Section(content: {
                ListRowNavigationLabel(title: "Advanced Tracking and Fingerprinting Protection", subtitle: "Private Browsing", content: AnyView(AdvancedTrackingFingerprintingProtectionView()))
                Toggle("Block All Cookies", isOn: $blockAllCookiesEnabled)
                    .onChange(of: blockAllCookiesEnabled, {
                        showingBlockCookiesAlert = blockAllCookiesEnabled
                    })
                    .alert("Are you sure you want to\nblock all cookies?", isPresented: $showingBlockCookiesAlert) {
                        Button("Block All", role: .destructive) {}
                        Button("Cancel", role: .cancel) { blockAllCookiesEnabled = false }
                    } message: {
                        Text("Websites may not work if you do this.\nIt will remove existing cookies and website data. Safari will quit and your tabs will be reloaded.")
                    }
                Toggle("Privacy Preseving Ad Measurement", isOn: $privacyPreservingAdMeasurementEnabled)
                Toggle("Check for Apple Pay", isOn: $checkForApplePayEnabled)
            }, header: {
                Text("Privacy")
            }, footer: {
                Text("Allow websites to check if Apple Pay is enabled and if you have an Apple Card account.\n[About Safari & Privacy...](#)")
            })
            
            Section {
                Toggle("JavaScript", isOn: $javaScriptEnabled)
            }
            
            Section {
                NavigationLink("Feature Flags", destination: FeatureFlagsView())
            }
        }
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                Text("Advanced")
                .font(.title)
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    SafariAdvancedView()
}
