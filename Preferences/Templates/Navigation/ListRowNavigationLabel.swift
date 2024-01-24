//
//  ListRowNavigationLabel.swift
//  Settings-visionOS
//
//  A template to have a NavigationLink with a title and subtitle on each side.
//
//  Parameters:
//  title: String, subtitle: String, destination: Content
//

import SwiftUI

struct ListRowNavigationLabel<Content: View>: View {
    var title: String = "Title"
    var subtitle: String = "Subtitle"
    var content: Content
    
    var body: some View {
        NavigationLink(destination: {
            content
        }, label: {
            HStack {
                Text(title)
                    .lineLimit(1)
                Spacer()
                Text(subtitle)
                    .foregroundStyle(.secondary)
            }
        })
    }
}

#Preview {
    ListRowNavigationLabel(content: EmptyView())
}
