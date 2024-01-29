//
//  PointerControlView.swift
//  Preferences
//
//  Settings > Accessibility > Interaction > Pointer Control
//

import SwiftUI

struct PointerControlView: View {
    // Variables
    @State private var pointerControlEnabled = false
    @State private var increaseContrastEnabled = false
    @State private var size = 0.0
    @State private var automaticallyHidePointerEnabled = true
    @State private var pointerAnimationsEnabled = true
    @State private var speed = 0.30
    
    var body: some View {
        CustomList(title: "Pointer Control") {
            Section {
                Toggle("Pointer Control", isOn: $pointerControlEnabled)
                ListRowNavigationLabel(title: "Control", subtitle: "Eyes", content: ControlView())
            }
            
            Section(content: {
                Toggle("Increase Contrast", isOn: $increaseContrastEnabled)
                ListRowNavigationLabel(title: "Color", subtitle: "None", content: ColorView())
            }, header: {
                Text("Appearance")
            })
            
            Section(content: {
                Slider(value: $size, in: 0...100)
            }, header: {
                Text("Pointer Size")
            })
            
            Section(content: {
                Toggle("Automatically Hide Pointer", isOn: $automaticallyHidePointerEnabled)
                Toggle("Pointer Animations", isOn: $pointerAnimationsEnabled)
            }, header: {
                Text("Trackpad")
            })
            
            Section(content: {
                Group {
                    Slider(value: $speed,
                           in: 0.0...1.0,
                           minimumValueLabel: Image(systemName: "tortoise.fill"),
                           maximumValueLabel: Image(systemName: "hare.fill"),
                           label: { Text("Scrolling Speed") }
                    )
                }
                .imageScale(.large)
            }, header: {
                Text("Scrolling Speed")
            })
        }
    }
}

#Preview {
    NavigationStack {
        PointerControlView()
    }
}
