//
//  AccessibilityKeyboardsView.swift
//  Preferences
//
//  Settings > Accessibility > Keyboards
//

import SwiftUI

struct AccessibilityKeyboardsView: View {
    // Variables
    @State private var showLowercaseKeysEnabled = true
    
    var body: some View {
        CustomList(title: "Keyboards") {
            Section(content: {
                ListRowNavigationLabel(title: "Full Keyboard Access", subtitle: "Off", content: EmptyView())
            }, header: {
                Text("Hardware Keyboards")
            }, footer: {
                Text("Use an external keyboard to control your Apple Vision Pro.")
            })
            
            Section(content: {
                ListRowNavigationLabel(title: "Key Repeat", subtitle: "On", content: EmptyView())
                ListRowNavigationLabel(title: "Sticky Keys", subtitle: "Off", content: EmptyView())
                ListRowNavigationLabel(title: "Slow Keys", subtitle: "Off", content: EmptyView())
            }, footer: {
                Text("Customize the typing experience when using an external keyboard.")
            })
            
            Section(content: {
                Toggle("Show LowercaseKeys", isOn: $showLowercaseKeysEnabled)
            }, header: {
                Text("Software Keyboards")
            }, footer: {
                Text("This affects keyboards that use the Shift key to switch between uppercase and lowercase letters.")
            })
        }
    }
}

#Preview {
    AccessibilityKeyboardsView()
}
