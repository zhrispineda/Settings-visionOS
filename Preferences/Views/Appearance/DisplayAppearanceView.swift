//
//  DisplayAppearanceView.swift
//  Preferences
//
//  Settings > Display > Appearance
//

import SwiftUI

struct DisplayAppearanceView: View {
    // Variables
    @State private var textSize: Size = .Large
        
    enum Size {
        case Small
        case Medium
        case Large
        case extraLarge
    }
    
    @State private var twoHandedWindowZoomEnabled = false
    
    var body: some View {
        CustomList(title: "Appearance") {
            Section(content: {
                Picker("Window Zoom Picker", selection: $textSize) {
                    Text("Small").tag(Size.Small)
                    Text("Medium").tag(Size.Medium)
                    Text("Large").tag(Size.Large)
                    Text("Extra Large").tag(Size.extraLarge)
                }
                .pickerStyle(SegmentedPickerStyle())
            }, header: {
                Text("Window Zoom")
            }, footer: {
                Text("Choose how you would like to view your \(UIDevice().name) content. Windows and controls will appear larger or smaller.")
            })
            
            Section(content: {
                Toggle("Two-Handed Window Zoom", isOn: $twoHandedWindowZoomEnabled)
            }, footer: {
                Text("Temporarily adjust window zoom by pinching with two hands, then pulling them apart or together.")
            })
        }
    }
}

#Preview {
    DisplayAppearanceView()
}
