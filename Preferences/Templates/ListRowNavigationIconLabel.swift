//
//  ListRowNavigationIconLabel.swift
//  Settings-visionOS
//
//  A template to have a NavigationLink with an icon and title.
//
//  Parameters:
//  color: Color, icon: String, title: String
//

import SwiftUI

struct ListRowNavigationIconLabel: View {
    // Variables
    var color: Color = Color.gray
    var icon: String = String()
    var title: String = String()
    var subtitle: String = String()
    var status: String = String()
    var content: AnyView = AnyView(EmptyView())
    
    var body: some View {
        NavigationLink(destination: {
            content
        }, label: {
            HStack {
                if UIImage(systemName: icon) != nil { // If SF Symbol
                    if icon == "clock.fill" {
                        Image(systemName: icon)
                            .font(.largeTitle)
                            .fontWeight(.light)
                            .foregroundStyle(color)
                    } else {
                        Image(systemName: icon)
                            .font(.largeTitle)
                            .fontWeight(.light)
                            .symbolRenderingMode(.palette)
                            .foregroundStyle(.white.gradient, color.gradient)
                    }
                } else { // If image asset
                    Image(icon)
                        .font(.largeTitle)
                        .fontWeight(.light)
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.white.gradient, color.gradient)
                }
                VStack(alignment: .leading) {
                    Text(title)
                    if !subtitle.isEmpty {
                        Text(subtitle)
                            .font(.callout)
                            .foregroundStyle(.secondary)
                    }
                }
                Spacer()
                if !status.isEmpty {
                    Text(status).foregroundStyle(.secondary)
                }
            }
        })
    }
}

#Preview {
    ListRowNavigationIconLabel(color: .red, icon: "questionmark.circle.fill", title: "Title", content: AnyView(EmptyView()))
}
