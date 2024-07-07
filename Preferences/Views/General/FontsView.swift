//
//  FontsView.swift
//  Settings-visionOS
//
//  Settings > General > Fonts
//

import SwiftUI

struct FontsView: View {
    var body: some View {
        VStack {
            Group {
                Text("No Fonts Installed")
                    .font(.title)
                Text("You can download apps that install fonts from the App Store.")
            }
            .foregroundStyle(.secondary)
            Button {} label: {
                Text("Open App Store")
            }
            .padding(.top, 3)
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Fonts")
                    .font(.title)
                    .frame(maxWidth: .infinity)
                    .offset(x: 15)
            }
            ToolbarItem(placement: .topBarTrailing) {
                EditButton()
                    .disabled(true)
            }
        }
    }
}

#Preview {
    FontsView()
}
