//
//  AccessibilityView.swift
//  Settings-visionOS
//
//  Settings > Accessibility
//

import SwiftUI

struct AccessibilityView: View {
    var body: some View {
        CustomList(title: "Accessibility") {
            Section(content: {
                ListRowNavigationSymbolLabel(color: Color(UIColor.darkGray), symbol: "voiceover", title: "VoiceOver", status: "Off", content: VoiceOverView())
                ListRowNavigationSymbolLabel(color: .blue, symbol: "textformat.size", title: "Display & Text Size", content: DisplayTextSizeView())
                ListRowNavigationSymbolLabel(color: .green, symbol: "circle.dotted.and.circle", title: "Motion", content: MotionView())
                ListRowNavigationSymbolLabel(color: Color(UIColor.darkGray), symbol: "rectangle.3.group.bubble.fill", title: "Spoken Content", content: SpokenContentView())
                ListRowNavigationSymbolLabel(color: .blue, symbol: "quote.bubble.fill", title: "Audio Descriptions", status: "Off", content: AudioDescriptionsView())
            }, header: {
                Text("Vision")
            })
            
            Section(content: {
                ListRowNavigationSymbolLabel(color: .blue, symbol: "hand.point.up.left.fill", title: "Interaction", content: InteractionView())
                ListRowNavigationSymbolLabel(color: Color(UIColor.darkGray), symbol: "square.grid.2x2", title: "Switch Control", status: "Off", content: SwitchControlView())
                ListRowNavigationSymbolLabel(color: .blue, symbol: "digitalcrown.horizontal.press.fill", title: "Digital Crown", content: DigitalCrownView())
                ListRowNavigationSymbolLabel(color: .gray, symbol: "keyboard", title: "Keyboards", content: AccessibilityKeyboardsView())
            }, header: {
                Text("Physical and Motor")
            })
            
            Section(content: {
                ListRowNavigationSymbolLabel(color: .red, symbol: "waveform.badge.magnifyingglass", title: "Sound Recognition", status: "Off", content: EmptyView())
                ListRowNavigationSymbolLabel(color: .blue, symbol: "eye.fill", title: "Audio & Visual", content: EmptyView())
                ListRowNavigationSymbolLabel(color: .blue, symbol: "captions.bubble.fill", title: "Subtitles & Captioning", content: EmptyView())
            }, header: {
                Text("Hearing")
            })
            
            Section(content: {
                ListRowNavigationSymbolLabel(color: Color(UIColor.darkGray), symbol: "lock.circle.dotted", title: "Guided Access", status: "Off", content: EmptyView())
                ListRowNavigationImageLabel(isRounded: true, image: "applesiri", title: "Siri", content: EmptyView())
                ListRowNavigationSymbolLabel(color: .blue, symbol: "accessibility", title: "Accessibility Shortcut", status: "Off", content: EmptyView())
                ListRowNavigationSymbolLabel(color: .blue, symbol: "circle.badge.checkmark", title: "Per-App Settings", content: EmptyView())
            }, header: {
                Text("General")
            })
        }
    }
}

#Preview {
    AccessibilityView()
}
