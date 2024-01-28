//
//  DirectTouchAppsView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Rotor > Direct Touch Apps
//

import SwiftUI

struct DirectTouchAppsView: View {
    // Variables
    @State private var apps = ["Calendar", "Files", "Freeform", "Maps", "News", "Photos", "Reminders", "Safari", "Settings", "Shortcuts"]
    @State private var selected = [""]
    let nativeApps = ["Files", "Freeform", "Photos", "Safari", "Settings"]
    
    var body: some View {
        CustomList(title: "Direct Touch Apps") {
            Section(content: {
                ForEach($apps, id: \.self) { $app in
                    Button(action: {
                        if let index = selected.firstIndex(of: app) {
                            selected.remove(at: index)
                        } else {
                            selected.append(app)
                        }
                    }, label: {
                        HStack(spacing: 15) {
                            Image("apple\(app.lowercased())")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 32)
                                .clipShape(nativeApps.contains(app) ? RoundedRectangle(cornerSize: CGSize(width: 50, height: 50)) : RoundedRectangle(cornerSize: CGSize(width: 5, height: 5)))
                            Text(app)
                            Spacer()
                            Image(systemName: "\(selected.contains(app) ? "checkmark" : "")")
                        }
                    })
                }
            }, header: {
                Text("Apply to")
            })
        }
    }
}

#Preview {
    DirectTouchAppsView()
}
