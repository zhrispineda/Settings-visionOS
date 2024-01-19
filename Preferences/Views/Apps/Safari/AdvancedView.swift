//
//  AdvancedView.swift
//  Preferences
//
//  Settings > Apps > Safari > Advanced
//

import SwiftUI

struct AdvancedView: View {
    // Variables
    @State private var blockAllCookiesEnabled = false
    @State private var privacyPreservingAdMeasurementEnabled = true
    @State private var checkForApplePayEnabled = true
    @State private var javaScriptEnabled = true
    
    var body: some View {
        List {
            Section {
                NavigationLink("Website Data", destination: {})
            }
            
            Section(content: {
                ListRowNavigationLabel(title: "Advanced Tracking and Fingerprinting Protection", subtitle: "Private Browsing", content: AnyView(EmptyView()))
                Toggle("Block All Cookies", isOn: $blockAllCookiesEnabled)
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
                NavigationLink("Feature Flags", destination: {})
            }
        }
        .padding([.leading, .trailing], 40)
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
    AdvancedView()
}
