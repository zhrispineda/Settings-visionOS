//
//  VersionView.swift
//  Settings-visionOS
//
//  Settings > General > About > visionOS Version
//

import SwiftUI

struct VersionView: View {
    var body: some View {
        List {
            Section(content: {
                VStack(alignment: .leading, spacing: 10) {
                    Text("visionOS 1.0 (21N305)").fontWeight(.heavy)
                    Text("This update includes improvements and bug fixes for your Apple Vision Pro.").foregroundStyle(.secondary)
                }
                .padding(.vertical, -10)
            }, header: {
                Text("visionOS Version")
            })
        }
        .padding([.leading, .trailing], 30)
        .navigationTitle("visionOS Version")
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("visionOS Version")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    VersionView()
}
