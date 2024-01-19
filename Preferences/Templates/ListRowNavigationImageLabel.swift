//
//  ListRowNavigationImageLabel.swift
//  Settings-visionOS
//
//  A template to have a NavigationLink with an image made to a circle shape and title.
//
//  Parameters:
//  isRounded: Bool, image: String, title: String
//

import SwiftUI

struct ListRowNavigationImageLabel: View {
    // Variables
    var isRounded: Bool = true
    var image: String = "applefreeform"
    var title: String = "Title"
    var content: AnyView = AnyView(EmptyView())
    
    var body: some View {
        NavigationLink(destination: {
            content
        }, label: {
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
                Text(title)
            }
        })
    }
}

#Preview {
    ListRowNavigationImageLabel()
}
