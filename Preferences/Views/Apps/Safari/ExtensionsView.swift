//
//  ExtensionsView.swift
//  Preferences
//
//  Settings > Apps > Safari > Extensions
//

import SwiftUI

struct ExtensionsView: View {
    var body: some View {
        List {
            Section(content: {}, header: {
                Text("No Extensions Installed")
            }, footer: {
                Text("Extensions customize the way Safari works. Extensions can change the appearance or behavior of web content, add buttons to Safari, and more.")
            })
        }
        .padding([.leading, .trailing], 40)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                Text("Extensions")
                .font(.title)
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    ExtensionsView()
}
