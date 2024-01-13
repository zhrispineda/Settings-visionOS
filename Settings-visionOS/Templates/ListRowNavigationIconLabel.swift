//
//  ListRowNavigationIconLabel.swift
//  Settings-visionOS
//
//  A template to have a NavigationLink with an icon and title.
//
//  Parameters:
//  icon: String, title: String
//

import SwiftUI

struct ListRowNavigationIconLabel: View {
    // Variables
    var color: Color = Color.green
    var icon: String = "questionmark.circle.fill"
    var title: String = "Title"
    var content: AnyView
    
    var body: some View {
        NavigationLink(destination: {
            content
        }, label: {
            if UIImage(systemName: icon) != nil { // If an SF Symbol
                Image(systemName: icon)
                    .font(.largeTitle)
                    .fontWeight(.light)
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.white.gradient, color.gradient)
            } else { // If an image asset
                Image(icon)
                    .font(.largeTitle)
                    .fontWeight(.light)
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.white.gradient, color.gradient)
            }
            
            Text(title)
        })
    }
}

#Preview {
    ListRowNavigationIconLabel(color: .red, icon: "questionmark.circle.fill", title: "Title", content: AnyView(EmptyView()))
}
