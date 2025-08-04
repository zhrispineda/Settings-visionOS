//
//  ListRowNavigationIconLabel.swift
//  Settings-visionOS
//
//  A template to have a NavigationLink with an icon and title.
//
//  Parameters:
//  color: Color, icon: String, title: String, subtitle: String, status: String, content: Content
//

import SwiftUI

struct ListRowNavigationIconLabel<Content: View>: View {
    var color: Color = Color.gray
    var icon: String = ""
    var title: String = ""
    var subtitle: String = ""
    var status: String = ""
    var content: Content
    
    var body: some View {
        NavigationLink {
            content
        } label: {
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
                } else if icon.contains("com.") {
                    IconView(icon: icon)
                } else {
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
                    if UIImage(systemName: status) != nil {
                        Image(systemName: status)
                    } else {
                        Text(status)
                            .foregroundStyle(.secondary)
                    }
                }
            }
        }
    }
}

#Preview {
    ListRowNavigationIconLabel(color: .red, icon: "bluetooth", title: "Title", status: "location.fill", content: EmptyView())
}
