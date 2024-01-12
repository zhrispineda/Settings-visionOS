//
//  ListRowLabel.swift
//  Settings-visionOS
//
//  A template to have a row label with a title and subtitle on each side.
//
//  Parameters:
//  title: String, subtitle: String
//

import SwiftUI

struct ListRowLabel: View {
    var title: String = "Title"
    var subtitle: String = "Subtitle"
    
    var body: some View {
        HStack {
            Text(title)
            Spacer()
            Text(subtitle)
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    ListRowLabel()
}
