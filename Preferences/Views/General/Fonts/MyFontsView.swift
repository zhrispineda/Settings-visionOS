//
//  MyFontsView.swift
//  Preferences
//
//  Settings > General > Fonts > My Fonts
//

import SwiftUI

struct MyFontsView: View {
    var body: some View {
        ScrollView {
            ZStack {
                Spacer().containerRelativeFrame(.vertical)
                VStack {
                    Text("No Fonts Installed")
                        .font(.title3)
                    Text("You can download apps that install fonts from the App Store.")
                        .foregroundStyle(.secondary)
                        .font(.subheadline)
                    Button("Open App Store") {}
                        .font(.subheadline)
                }
            }
        }
        .toolbar {
            ToolbarItem(placement: .secondaryAction) {
                Text("My Fonts")
                    .font(.title2)
            }
            
            ToolbarItem(placement: .topBarTrailing) {
                EditButton()
                    .disabled(true)
            }
        }
    }
}

#Preview {
    NavigationStack {
        MyFontsView()
    }
}
