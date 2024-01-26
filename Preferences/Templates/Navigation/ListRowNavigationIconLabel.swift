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
    // Variables
    var color: Color = Color.gray
    var icon: String = String()
    var title: String = String()
    var subtitle: String = String()
    var status: String = String()
    var content: Content
    
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
                    if icon == "logo.bluetooth" {
                        ZStack {
                            Circle()
                                .foregroundStyle(color.gradient)
                                .frame(width: 32, height: 32)
                            Image(icon)
                                .fontWeight(.light)
                                .imageScale(.large)
                                .symbolRenderingMode(.palette)
                                .foregroundStyle(.white.gradient, color.gradient)
                        }
                    } else {
                        Image(icon)
                            .font(.largeTitle)
                            .fontWeight(.light)
                            .symbolRenderingMode(.palette)
                            .foregroundStyle(.white.gradient, color.gradient)
                    }
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
    ListRowNavigationIconLabel(color: .red, icon: "logo.bluetooth", title: "Title", content: EmptyView())
}
