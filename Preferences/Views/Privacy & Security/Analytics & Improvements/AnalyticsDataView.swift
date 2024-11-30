//
//  AnalyticsDataView.swift
//  Preferences
//
//  Settings > Privacy & Security > Analytics & Improvements > Analytics Data
//

import SwiftUI

struct AnalyticsDataView: View {
    // Variables
    @State private var searchText = String()
    
    var body: some View {
        CustomList(title: "Data") {
            Text("No Diagnotic Data")
                .foregroundStyle(.secondary)
        }
        .searchable(text: $searchText, placement: .toolbar, prompt: Text("Search"))
    }
}

#Preview {
    AnalyticsDataView()
}
