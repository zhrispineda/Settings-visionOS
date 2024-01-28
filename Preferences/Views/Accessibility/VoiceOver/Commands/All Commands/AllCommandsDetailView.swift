//
//  AllCommandsDetailView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Commands > All Commands > Interaction
//

import SwiftUI

struct AllCommandsDetailView: View {
    var title = String()
    let activateItems = ["Activate", "Begin Passthrough Gesture", "Enter Direct Gesture Mode", "Escape", "Magic Tap", "Perform Long Press", "Secondary Activate"]
    let basicNavigationItems = ["Exploration Mode", "Move In", "Move Out", "Move to Bottom of Container", "Move to Bottom of Document", "Move to First Item", "Move to Item Above", "Move to Item at Center", "Move to Item Below", "Move to Last Item", "Move to Linked Item", "Move to Next Container", "Move to Next Item", "Move to Next Visible App", "Move to Previous Container", "Move to Previous Item", "Move to Previous Visible App", "Move to Status Bar", "Move to Top of Container", "Move to Top of Document", "Sync Focus to System"]
    let textNavigationItems = ["Move to Next Blockquote", "Move to Next Color Change", "Move to Next Font Change", "Move to Next Item with Bold Text", "Move to Next Item with Italic Text", "Move to Next Item with Plain Text", "Move to Next Item with Underlined Text", "Move to Next Misspelled Word", "Move to Next Same Blockquote", "Move to Next Style Change", "Move to Previous Blockquote", "Move to Previous Color Change", "Move to Previous Font Change", "Move to Previous Item with Bold Text", "Move to Previous Item with Italic Text", "Move to Previous Item with Plain Text", "Move to Previous Item with Underlined Text", "Move to Previous Misspelled Word", "Move to Previous Same Blockquote", "Move to Previous Style Change", "Next Character", "Next Paragraph", "Next Sentence", "Next Word", "Previous Character", "Previous Paragraph", "Previous Sentence", "Previous Word"]
    let advancedNavigationItems = ["Item Text Search", "Move to Next Column", "Move to Next Control", "Move to Next Different Item", "Move to Next Frame", "Move to Next Heading", "Move to Next Image", "Move to Next Link", "Move to Next List", "Move to Next Same Heading", "Move to Next Same Item", "Move to Next Table", "Move to Next Visited Link", "Move to Previous Column", "Move to Previous Control", "Move to Previous Different Item", "Move to Previous Frame", "Move to Previous Heading", "Move to Previous Image", "Move to Previous Link", "Move to Previous List", "Move to Previous Same Heading", "Move to Previous Same Item", "Move to Previous Table", "Move to Previous Visited Link", "Move to System-Focused Item", "Next Search Result", "Previous Search Result"]
    let editingItems = ["Copy", "Cut", "Paste", "Redo", "Undo"]
    let rotorItems = ["Next Rotor", "Next Rotor Item", "Previous Rotor", "Previous Rotor Item"]
    let scrollingItems = ["Scroll Down", "Scroll Left", "Scroll Right", "Scroll to Bottom", "Scroll to Top", "Scroll Up"]
    let speechAudioItems = ["Toggle Audio Ducking", "Toggle Mute", "Toggle Speech", "Volume Down", "Volume Up"]
    let outputItems = ["Describe App Location", "Describe Item", "Read All", "Read Character", "Read Character Phonetically", "Read Column Contents", "Read Column Header", "Read From Top", "Read Hint", "Read Item Summary", "Read Line", "Read Line Count", "Read Row Contents", "Read Row Header", "Read Selected Text", "Read System-Focused Item Details", "Read System-Focused Item Summary", "Read Table Row Column", "Read Table Row Column Cell", "Read Text Style", "Read URL", "Read Word"]
    let brailleItems = ["Decrease Auto Advance Speed", "Enable Auto Advance", "Increase Auto Advance Speed", "Next Input Mode", "Next Output Mode", "Pan Left", "Pan Right", "Toggle 8-Dot Braille", "Toggle Announcement History", "Toggle Contractions", "Toggle Word Wrap", "Translate", "Translate Braille to Clipboard"]
    let voiceOverItems = ["Describe Passthrough", "Label Item", "Open Quick Settings", "Open VoiceOver Settings", "Show Item Chooser", "Start Help", "Toggle Caption Panel", "Toggle Lock Modifier Keys", "Toggle Quick Nav", "Toggle Screen Curtain", "Toggle Single Letter Quick Nav", "Toggle Sound Curtain", "Watch Item"]
    let systemItems = ["Accessibility Shortcut", "Activate Speak Screen", "Control Center", "Home", "Lock Screen", "Notification Center", "Spotlight", "Switch to Next App", "Switch to Previous App", "Take Screenshot"]
    let otherItems = ["Copy Speech to Clipboard", "Toggle Text Selection"]
    
    var body: some View {
        CustomList(title: title) {
            switch title {
            case "Interaction":
                ForEach(activateItems, id: \.self) { item in
                    NavigationLink(item, destination: InteractionItemView(title: item))
                }
            case "Basic Navigation":
                ForEach(basicNavigationItems, id: \.self) { item in
                    NavigationLink(item, destination: InteractionItemView(title: item))
                }
            case "Text Navigation":
                ForEach(textNavigationItems, id: \.self) { item in
                    NavigationLink(item, destination: InteractionItemView(title: item))
                }
            case "Advanced Navigation":
                ForEach(advancedNavigationItems, id: \.self) { item in
                    NavigationLink(item, destination: InteractionItemView(title: item))
                }
            case "Editing":
                ForEach(editingItems, id: \.self) { item in
                    NavigationLink(item, destination: InteractionItemView(title: item))
                }
            case "Rotor":
                ForEach(rotorItems, id: \.self) { item in
                    NavigationLink(item, destination: InteractionItemView(title: item))
                }
            case "Scrolling":
                ForEach(scrollingItems, id: \.self) { item in
                    NavigationLink(item, destination: InteractionItemView(title: item))
                }
            case "Speech & Audio":
                ForEach(speechAudioItems, id: \.self) { item in
                    NavigationLink(item, destination: InteractionItemView(title: item))
                }
            case "Output":
                ForEach(outputItems, id: \.self) { item in
                    NavigationLink(item, destination: InteractionItemView(title: item))
                }
            case "Braille":
                ForEach(brailleItems, id: \.self) { item in
                    NavigationLink(item, destination: InteractionItemView(title: item))
                }
            case "VoiceOver":
                ForEach(voiceOverItems, id: \.self) { item in
                    NavigationLink(item, destination: InteractionItemView(title: item))
                }
            case "System":
                ForEach(systemItems, id: \.self) { item in
                    NavigationLink(item, destination: InteractionItemView(title: item))
                }
            case "Other":
                ForEach(otherItems, id: \.self) { item in
                    NavigationLink(item, destination: InteractionItemView(title: item))
                }
            default:
                Text("No items.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        AllCommandsView()
    }
}
