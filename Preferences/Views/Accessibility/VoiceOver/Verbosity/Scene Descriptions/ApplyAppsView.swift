//
//  ApplyAppsView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Verbosity > Scene Descriptions > Apply to Apps
//

import SwiftUI

struct ApplyAppsView: View {
    // Variables
    @State private var selected = [""]
    var title = "Apply to Apps"
    let apps = ["Calendar", "Files", "Freeform", "Maps", "News", "Photos", "Reminders", "Safari", "Settings", "Shortcuts"]
    let roundedIcons = ["Files", "Freeform", "Photos", "Safari", "Settings"]
    
    var body: some View {
        CustomList(title: title) {
            Section("Apply to") {
                ForEach(apps, id: \.self) { app in
                    Button {
                        if let index = selected.firstIndex(of: app) {
                            selected.remove(at: index)
                        } else {
                            selected.append(app)
                        }
                    } label: {
                        HStack(spacing: 15) {
                            Image("apple\(app.lowercased())")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 30)
                                .clipShape(roundedIcons.contains(app) ? RoundedRectangle(cornerSize: CGSize(width: 50, height: 50)) : RoundedRectangle(cornerSize: CGSize(width: 5, height: 5)))
                            Text(app)
                            Spacer()
                            if selected.contains(app) {
                                Image(systemName: "checkmark")
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        ApplyAppsView()
    }
}
