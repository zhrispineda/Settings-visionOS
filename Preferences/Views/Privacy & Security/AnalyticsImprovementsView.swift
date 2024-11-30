//
//  AnalyticsImprovementsView.swift
//  Preferences
//
//  Settings > Privacy & Security > Analytics & Improvements
//

import SwiftUI

struct AnalyticsImprovementsView: View {
    // Variables
    @AppStorage("ShareAnalytics") private var shareAnalytics = false
    
    var body: some View {
        CustomList(title: "Analytics & Improvements") {
            Section {
                Toggle("Share Apple Vision Pro Analytics", isOn: $shareAnalytics)
                NavigationLink("Analytics Data", destination: AnalyticsDataView())
            } footer: {
                Text("Help improve products and services by sharing diagnostic and usage data with Apple. Apple may share data with developers relevant to your use of their apps and products. [About Analytics & Privacy...](#)")
            }
        }
    }
}

#Preview {
    AnalyticsImprovementsView()
}
