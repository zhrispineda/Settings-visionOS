//
//  FontsView.swift
//  Settings-visionOS
//
//  Created by Chris on 1/17/24.
//

import SwiftUI

struct FontsView: View {
    var body: some View {
        VStack {
            Group {
                Text("No Fonts Installed").font(.title)
                Text("You can download apps that install fonts from the App Store.")
            }
            .foregroundStyle(.secondary)
            Button(action: {}, label: {
                Text("Open App Store")
            })
            .padding(.top, 3)
        }
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Fonts")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
            })
            ToolbarItem(placement: .topBarTrailing, content: {
                EditButton()
                    .disabled(true)
            })
        }
    }
}

#Preview {
    FontsView()
}
