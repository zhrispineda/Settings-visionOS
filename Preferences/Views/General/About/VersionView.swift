//
//  VersionView.swift
//  Settings-visionOS
//
//  Settings > General > About > visionOS Version
//

import SwiftUI

struct VersionView: View {
    var body: some View {
        CustomList(title: "\(UIDevice().systemName) Version") {
            Section {
                VStack(alignment: .leading, spacing: 10) {
                    Text("\(UIDevice().systemName) \(UIDevice().systemVersion) (22N5297g)")
                        .fontWeight(.heavy)
                    Text("This update includes improvements and bug fixes for your \(UIDevice().name).")
                        .foregroundStyle(.secondary)
                }
                .padding(.vertical, 0)
            } header: {
                Text("\(UIDevice().systemName) Version")
            }
        }
    }
}

#Preview {
    NavigationStack {
        VersionView()
    }
}
