//
//  ListRowNavigationLabel.swift
//  Settings-visionOS
//
//  A template to have a NavigationLink with a title and subtitle on each side.
//
//  Parameters:
//  title: String, subtitle: String, content: AnyView
//

import SwiftUI

struct ListRowNavigationLabel: View {
    var title: String = "Title"
    var subtitle: String = "Subtitle"
    var content: AnyView
    
    var body: some View {
        NavigationLink(destination: {
            content
        }, label: {
            HStack {
                Text(title)
                Spacer()
                Text(subtitle)
                    .foregroundStyle(.secondary)
            }
        })
    }
}

#Preview {
    ListRowNavigationLabel(content: AnyView(EmptyView()))
}
