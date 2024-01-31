//
//  TVProviderView.swift
//  Settings-visionOS
//
//  Settings > Developer > TV Provider
//

import SwiftUI

struct TVProviderView: View {
    @State private var cacheBusterEnabled = false
    @State private var disableTimeoutsEnabled = false
    @State private var simulateExpiredTokenEnabled = false
    
    var body: some View {
        List {
            Section(content: {
                Toggle("Cache Buster", isOn: $cacheBusterEnabled)
            }, header: {
                Text("Options")
            }, footer: {
                Text("When enabled, the query paramter \u{201C}cachebuster\u{201D} will be added to development TV Provider Auth URLs.")
            })
            
            Section(content: {
                Toggle("Disable Timeouts", isOn: $disableTimeoutsEnabled)
            }, footer: {
                Text("When enabled, the default callback timeouts will be disabled in development TV Provider authentication contexts.")
            })
            
            Section(content: {
                Toggle("Simulate Expired Token", isOn: $simulateExpiredTokenEnabled)
            }, footer: {
                Text("When enabled, authentication tokens provided to applications and the JavaScript authentication context will have an expiration date in the past.")
            })
            
            Section(content: {
                Button(action: {
                    //
                }, label: {
                    Text("Add TV Provider")
                        .frame(maxWidth: .infinity)
                })
            }, header: {
                Text("Development TV Providers")
            })
        }
        .padding(.horizontal, 45)
        .toolbar {
            ToolbarItem(placement: .topBarLeading, content: {
                Text("TV Provider")
                    .font(.title)
            })
        }
    }
}

#Preview {
    TVProviderView()
}
