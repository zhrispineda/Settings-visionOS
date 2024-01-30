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
            Section(content: {
                VStack(alignment: .leading, spacing: 10) {
                    Text("\(UIDevice().systemName) \(UIDevice().systemVersion) (21N305)")
                        .fontWeight(.heavy)
                    Text("This update includes improvements and bug fixes for your \(UIDevice().name).")
                        .foregroundStyle(.secondary)
                }
                .padding(.vertical, -10)
            }, header: {
                Text("\(UIDevice().systemName) Version")
            })
        }
    }
}

#Preview {
    VersionView()
}
