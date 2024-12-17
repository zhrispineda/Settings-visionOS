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
            Section("Vision") {
                ListRowNavigationSymbolLabel(color: .black, symbol: "voiceover", title: "VoiceOver", status: "Off", content: VoiceOverView())
                ListRowNavigationSymbolLabel(color: .blue, symbol: "textformat.size", title: "Display & Text Size", content: DisplayTextSizeView())
                ListRowNavigationSymbolLabel(color: .green, symbol: "circle.dotted.and.circle", title: "Motion", content: MotionView())
                ListRowNavigationSymbolLabel(color: .black, symbol: "rectangle.3.group.bubble.fill", title: "Spoken Content", content: SpokenContentView())
                ListRowNavigationSymbolLabel(color: .blue, symbol: "quote.bubble.fill", title: "Audio Descriptions", status: "Off", content: AudioDescriptionsView())
            }
            
            Section("Physical and Motor") {
                //ListRowNavigationSymbolLabel(color: .blue, symbol: "hand.point.up.left.fill", title: "Interaction", content: InteractionView())
                ListRowNavigationSymbolLabel(color: .black, symbol: "square.grid.2x2", title: "Switch Control", status: "Off", content: SwitchControlView())
                ListRowNavigationSymbolLabel(color: .blue, symbol: "digitalcrown.horizontal.press.fill", title: "Digital Crown", content: AccessibilityDigitalCrownView())
            }
            
            Section("Hearing") {
                ListRowNavigationSymbolLabel(color: .red, symbol: "waveform.badge.magnifyingglass", title: "Sound Recognition", status: "Off", content: SoundRecognitionView())
                ListRowNavigationSymbolLabel(color: .blue, symbol: "eye.fill", title: "Audio & Visual", content: AudioVisualView())
                ListRowNavigationSymbolLabel(color: .blue, symbol: "captions.bubble.fill", title: "Subtitles & Captioning", content: SubtitlesCaptioningView())
            }
            
            Section("Speech") {
                ListRowNavigationSymbolLabel(color: .black, symbol: "keyboard.badge.waveform.fill", title: "Live Speech", content: EmptyView())
                NavigationLink {} label: {
                    LabeledContent("Vocal Shortcuts", value: "Off")
                }
            }
            
            Section("Accessories") {
                ListRowNavigationSymbolLabel(color: .gray, symbol: "keyboard.fill", title: "Keyboards & Typing", content: AccessibilityKeyboardsView())
            }
            
            Section("General") {
                ListRowNavigationSymbolLabel(color: .black, symbol: "lock.circle.dotted", title: "Guided Access", status: "Off", content: GuidedAccessView())
                ListRowNavigationImageLabel(isRounded: true, image: "VisionDefaultIcon", title: "Siri", content: SiriView())
                ListRowNavigationSymbolLabel(color: .blue, symbol: "accessibility", title: "Accessibility Shortcut", status: "Off", content: AccessibilityShortcutView())
                ListRowNavigationSymbolLabel(color: .blue, symbol: "circle.badge.checkmark", title: "Per-App Settings", content: PerAppSettingsView())
            }
        }
    }
}

#Preview {
    NavigationStack {
        AccessibilityView()
    }
}
