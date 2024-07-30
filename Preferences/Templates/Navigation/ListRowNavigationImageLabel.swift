//
//  ListRowNavigationImageLabel.swift
//  Settings-visionOS
//
//  A template to have a NavigationLink with an image made to a circle shape and title with an optional subtitle.
//
//  Parameters:
//  isRounded: Bool, image: String, title: String, subtitle: String, status: String, content: Content
//

import SwiftUI

struct ListRowNavigationImageLabel<Content: View>: View {
    // Variables
    var isRounded: Bool = true
    var image: String = "applefreeform"
    var title: String = "Title"
    var subtitle: String = String()
    var status: String = String()
    var content: Content
    
    var body: some View {
        NavigationLink {
            content
        } label: {
            HStack(spacing: 15) {
                if isRounded {
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())
                } else {
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .clipShape(RoundedRectangle(cornerRadius: 6.0))
                }
                VStack(alignment: .leading) {
                    Text(title)
                    if !subtitle.isEmpty {
                        Text(subtitle)
                            .foregroundStyle(.secondary)
                            .font(.caption)
                    }
                }
                Spacer()
                Text(status)
                    .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    ListRowNavigationImageLabel(content: EmptyView())
}
