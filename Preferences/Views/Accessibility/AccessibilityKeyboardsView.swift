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
            Section {
                ListRowNavigationLabel(title: "Full Keyboard Access", subtitle: "Off", content: FullKeyboardAccessView())
            } header: {
                Text("Hardware Keyboards")
            } footer: {
                Text("Use an external keyboard to control your \(UIDevice().name).")
            }
            
            Section {
                ListRowNavigationLabel(title: "Key Repeat", subtitle: "On", content: KeyRepeatView())
                ListRowNavigationLabel(title: "Sticky Keys", subtitle: "Off", content: StickyKeysView())
                ListRowNavigationLabel(title: "Slow Keys", subtitle: "Off", content: SlowKeysView())
            } footer: {
                Text("Customize the typing experience when using an external keyboard.")
            }
            
            Section {
                Toggle("Show Lowercase Keys", isOn: $showLowercaseKeysEnabled)
            } header: {
                Text("Software Keyboards")
            } footer: {
                Text("This affects keyboards that use the Shift key to switch between uppercase and lowercase letters.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        AccessibilityKeyboardsView()
    }
}
