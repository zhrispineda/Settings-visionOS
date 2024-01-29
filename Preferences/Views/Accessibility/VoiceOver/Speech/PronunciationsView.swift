//
//  PronunciationsView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Speech > Pronunciations
//

import SwiftUI

struct PronunciationsView: View {
    var body: some View {
        List {
            
        }
        .padding(.horizontal, 45)
        // Horizontally-centered title text
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                Text("Pronunciations")
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
    PronunciationsView()
}
