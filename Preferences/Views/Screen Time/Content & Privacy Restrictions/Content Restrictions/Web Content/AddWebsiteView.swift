//
//  AddWebsiteView.swift
//  Preferences
//
//  Settings > Screen Time > Content & Restrictions > Content Restrictions > Web Content > Add Website
//

import SwiftUI

struct AddWebsiteView: View {
    // Variables
    @State private var text = String()
    
    var body: some View {
        CustomList(title: "Add Website") {
            HStack(spacing: 50) {
                Text("URL")
                TextField(text: $text, label: {
                    Text("https://www.example.com")
                })
            }
        }
    }
}

#Preview {
    AddWebsiteView()
}
