//
//  ListRowNavigationLabel.swift
//  Settings-visionOS
//
//  Created by Chris on 1/8/24.
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
