//
//  RestrictionsAppsView.swift
//  Preferences
//
//  Settings > Screen Time > Content & Privacy Restrictions > Content Restrictions > Apps
//

import SwiftUI

struct RestrictionsAppsView: View {
    // Variables
    @State private var selected = "Allow All"
    let options = ["Don't Allow", "4+", "9+", "12+", "17+", "Allow All"]
    
    @State private var showMoviesCloudEnabled = true
    
    var body: some View {
        CustomList(title: "Apps") {
            Picker("", selection: $selected) {
                ForEach(options, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.inline)
            .labelsHidden()
        }
    }
}

#Preview {
    NavigationStack {
        RestrictionsAppsView()
    }
}
