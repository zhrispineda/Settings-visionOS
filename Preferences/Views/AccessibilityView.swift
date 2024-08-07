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
            Section {
                ListRowNavigationSymbolLabel(color: Color(UIColor.darkGray), symbol: "voiceover", title: "VoiceOver", status: "Off", content: VoiceOverView())
                ListRowNavigationSymbolLabel(color: .blue, symbol: "textformat.size", title: "Display & Text Size", content: DisplayTextSizeView())
                ListRowNavigationSymbolLabel(color: .green, symbol: "circle.dotted.and.circle", title: "Motion", content: MotionView())
                ListRowNavigationSymbolLabel(color: Color(UIColor.darkGray), symbol: "rectangle.3.group.bubble.fill", title: "Spoken Content", content: SpokenContentView())
                ListRowNavigationSymbolLabel(color: .blue, symbol: "quote.bubble.fill", title: "Audio Descriptions", status: "Off", content: AudioDescriptionsView())
            } header: {
                Text("Vision")
            }
            
            Section {
                ListRowNavigationSymbolLabel(color: .blue, symbol: "hand.point.up.left.fill", title: "Interaction", content: InteractionView())
                ListRowNavigationSymbolLabel(color: Color(UIColor.darkGray), symbol: "square.grid.2x2", title: "Switch Control", status: "Off", content: SwitchControlView())
                ListRowNavigationSymbolLabel(color: .blue, symbol: "digitalcrown.horizontal.press.fill", title: "Digital Crown", content: AccessibilityDigitalCrownView())
                ListRowNavigationSymbolLabel(color: .gray, symbol: "keyboard", title: "Keyboards", content: AccessibilityKeyboardsView())
            } header: {
                Text("Physical and Motor")
            }
            
            Section {
                ListRowNavigationSymbolLabel(color: .red, symbol: "waveform.badge.magnifyingglass", title: "Sound Recognition", status: "Off", content: SoundRecognitionView())
                ListRowNavigationSymbolLabel(color: .blue, symbol: "eye.fill", title: "Audio & Visual", content: AudioVisualView())
                ListRowNavigationSymbolLabel(color: .blue, symbol: "captions.bubble.fill", title: "Subtitles & Captioning", content: SubtitlesCaptioningView())
            } header: {
                Text("Hearing")
            }
            
            Section {
                ListRowNavigationSymbolLabel(color: Color(UIColor.darkGray), symbol: "lock.circle.dotted", title: "Guided Access", status: "Off", content: GuidedAccessView())
                ListRowNavigationImageLabel(isRounded: true, image: "applesiri", title: "Siri", content: SiriView())
                ListRowNavigationSymbolLabel(color: .blue, symbol: "accessibility", title: "Accessibility Shortcut", status: "Off", content: AccessibilityShortcutView())
                ListRowNavigationSymbolLabel(color: .blue, symbol: "circle.badge.checkmark", title: "Per-App Settings", content: PerAppSettingsView())
            } header: {
                Text("General")
            }
        }
    }
}

#Preview {
    NavigationStack {
        AccessibilityView()
    }
}
