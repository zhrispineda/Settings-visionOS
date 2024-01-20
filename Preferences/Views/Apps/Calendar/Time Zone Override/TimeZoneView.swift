//
//  TimeZoneView.swift
//  Preferences
//
//  Settings > Apps > Calendar > Time Zone Override > Time Zone
//

import SwiftUI

struct TimeZoneView: View {
    // Variables
    @State private var searchText = String()
    
    var body: some View {
        List {
            
        }
        .navigationTitle("Time Zone")
        .searchable(text: $searchText)
    }
}

#Preview {
    TimeZoneView()
}
