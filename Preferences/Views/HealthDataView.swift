//
//  HealthDataView.swift
//  Preferences
//
//  Settings > Health Data
//

import SwiftUI

struct HealthDataView: View {
    var body: some View {
        CustomList(title: "Health Data") {
            Section("Medical Details") {
                NavigationLink("Health Details", destination: EmptyView())
                NavigationLink("Medical ID", destination: EmptyView())
            }
            
            Section("Data") {
                NavigationLink("Data Access & Devices", destination: EmptyView())
            }
        }
    }
}

#Preview {
    HealthDataView()
}
