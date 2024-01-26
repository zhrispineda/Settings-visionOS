//
//  PronounciationsView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Speech > Pronounciations
//

import SwiftUI

struct PronounciationsView: View {
    var body: some View {
        List {
            
        }
        .padding(.horizontal, 45)
        // Horizontally-centered title text
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                Text("Pronounciations")
                    .font(.title2)
                    .frame(maxWidth: .infinity)
            })
            ToolbarItem(placement: .topBarTrailing, content: {
                Button("", systemImage: "plus", action: {})
            })
        }
    }
}

#Preview {
    PronounciationsView()
}
