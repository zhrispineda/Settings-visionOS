//
//  HardwareKeyboardView.swift
//  Settings-visionOS
//
//  Settings > Keyboard > Hardware Keyboard
//

import SwiftUI

struct HardwareKeyboardView: View {
    // Variables
    @State private var autoCapitalizationEnabled = true
    @State private var autoCorrectionEnabled = true
    @State private var periodShortcutEnabled = true
    
    var body: some View {
        List {
            Section {
                ListRowNavigationLabel(title: "English", subtitle: "Automatic — U.S.", content: AnyView(EmptyView()))
            }
            
            Section(content: {
                Toggle("Auto-Capitalization", isOn: $autoCapitalizationEnabled)
                Toggle("Auto-Correction", isOn: $autoCorrectionEnabled)
                Toggle("\u{201C}.\u{201D} Shortcut", isOn: $periodShortcutEnabled)
            }, footer: {
                Text("Pressing the space bar twice will insert a period followed by a space.")
            })
            
            Section {
                NavigationLink("Modifier Keys", destination: {})
            }
            
            Section(content: {
                ListRowNavigationLabel(title: "Keyboard Type", subtitle: "ANSI", content: AnyView(EmptyView()))
            }, footer: {
                Text("Your keyboard has been identified. IF this isn't the correct type for your keyboard, select the type.")
            })
        }
        .padding([.leading, .trailing], 25)
        .navigationTitle("Hardware Keyboard")
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Hardware Keyboard")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
            })
        }
    }
}

#Preview {
    HardwareKeyboardView()
}
