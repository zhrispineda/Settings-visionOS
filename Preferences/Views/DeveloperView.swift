//
//  DeveloperView.swift
//  Settings-visionOS
//
//  Settings > Developer
//

import SwiftUI

struct DeveloperView: View {
    var body: some View {
        CustomViewController("/System/Library/PreferenceBundles/DeveloperSettings.bundle/DeveloperSettings", controller: "DTSettings")
            .ignoresSafeArea()
            .padding(.horizontal, 45)
            .toolbar {
                ToolbarItem(placement: .secondaryAction) {
                    Text("Developer")
                        .font(.title2)
                }
            }
    }
}

#Preview {
    NavigationStack {
        DeveloperView()
    }
}
