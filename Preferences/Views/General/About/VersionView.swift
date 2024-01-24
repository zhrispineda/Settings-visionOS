//
//  VersionView.swift
//  Settings-visionOS
//
//  Settings > General > About > visionOS Version
//

import SwiftUI

struct VersionView: View {
    var body: some View {
        CustomList(title: "visionOS Version") {
            Section(content: {
                VStack(alignment: .leading, spacing: 10) {
                    Text("visionOS 1.0 (21N305)")
                        .fontWeight(.heavy)
                    Text("This update includes improvements and bug fixes for your Apple Vision Pro.")
                        .foregroundStyle(.secondary)
                }
                .padding(.vertical, -10)
            }, header: {
                Text("visionOS Version")
            })
        }
    }
}

#Preview {
    VersionView()
}
