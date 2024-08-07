//
//  DisplayTextSizeView.swift
//  Preferences
//
//  Settings > Accessibility > Display & Text Size
//

import SwiftUI

struct DisplayTextSizeView: View {
    // Variables
    @State private var boldTextEnabled = false
    @State private var buttonShapesEnabled = false
    @State private var onOffLabelsEnabled = false
    @State private var ignoreEyeMovementsEnabled = false
    @State private var increaseFocusStateEnabled = false
    @State private var increaseContrastEnabled = false
    @State private var differentiateWithoutColorEnabled = false
    @State private var preferHorizontalTextEnabled = false
    @State private var classicInvertEnabled = false
    @State private var reduceWhitePointEnabled = false
    @State private var whitePoint: Double = 25
    
    var body: some View {
        CustomList(title: "Display & Text Size") {
            Section {
                Toggle("Bold Text", isOn: $boldTextEnabled)
                ListRowNavigationLabel(title: "Larger Text", subtitle: "Off", content: LargerTextView())
                Toggle("Button Shapes", isOn: $buttonShapesEnabled)
                Toggle("On/Off Labels", isOn: $onOffLabelsEnabled)
            }
            
            Section {
                Toggle("Ignore Eye Movements to Stabilize", isOn: $ignoreEyeMovementsEnabled)
            } footer: {
                Text("If you observe blurriness, jumpiness or inconsistent colors, you can enable Ignore Eye Movements to turn off dynamic image optimization.")
            }
            
            Section {
                Toggle("Increase Focus State", isOn: $increaseFocusStateEnabled)
            } footer: {
                Text("Increase contrast for items when you look at them.")
            }
            
            Section {
                Toggle("Increase Contrast", isOn: $increaseContrastEnabled)
            } footer: {
                Text("Increase color contrast between app foreground and background colors.")
            }
            
            Section {
                Toggle("Differentiate Without Color", isOn: $differentiateWithoutColorEnabled)
            } footer: {
                Text("Replaces user interface items that rely solely on color to convey information with alternatives.")
            }
            
            Section {
                Toggle("Prefer Horizontal Text", isOn: $preferHorizontalTextEnabled)
            } footer: {
                Text("Prefer horizontal text in languages that support vertical text.")
            }
            
            Section {
                Toggle("Classic Invert", isOn: $classicInvertEnabled)
            } footer: {
                Text("Classic Invert reverses the colors of the display.")
            }
            
            Section {
                Toggle("Reduce White Point", isOn: $reduceWhitePointEnabled)
                if reduceWhitePointEnabled {
                    HStack(spacing: 15) {
                        Slider(value: $whitePoint, in: 25...100)
                        Text("\(whitePoint, specifier: "%.0f")%")
                    }
                }
            } footer: {
                Text("Reduce the intensity of bright colors.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        DisplayTextSizeView()
    }
}
