//
//  InteractionItemView.swift
//  Preferences
//
//  Template for managing items in:
//  Settings > Accessibility > VoiceOver > Commands > All Commands > Interaction
//

import SwiftUI

struct InteractionItemView: View {
    // Variables
    var title = String()
    
    // MARK: - Touch Gestures
    // Interaction
    @State private var activateTouchGestures = ["Left Index Pinch", "Right Ring Pinch"]
    @State private var beginPassthroughGestureTouchGestures = ["Right Ring Double Long Pinch", "Left Index Double Long Pinch"]
    @State private var enterDirectGestureModeTouchGestures = ["Left Index Triple Long Pinch", "Right Ring Triple Long Pinch"]
    @State private var escapeTouchGestures = ["Right Middle Long Pinch"]
    @State private var magicTapTouchGestures = ["Right Ring Triple Pinch", "Left Index Triple Pinch"]
    @State private var performLongPressTouchGestures = ["Right Ring Double Pinch", "Left Index Double Pinch"]
    @State private var secondaryActiveTouchGestures = ["Right Ring Quadruple Pinch", "Left Index Quadruple Pinch"]
    
    // Basic Navigation
    @State private var explorationModeTouchGestures = ["Right Index Long Pinch"]
    @State private var moveNextItemTouchGestures = ["Right Index Pinch"]
    @State private var movePreviousItemTouchGestures = ["Right Middle Pinch"]
    
    // Rotor
    @State private var nextRotorTouchGestures = ["Left Middle Modifier with Right Index Pinch"]
    @State private var nextRotorItemTouchGestures = ["Left Index Modifier with Right Index Pinch"]
    @State private var previousRotorTouchGestures = ["Left Middle Modifier with Right Middle Pinch"]
    @State private var previousRotorItemTouchGestures = ["Left Index Modifier with Right Middle Pinch"]
    
    // Scrolling
    @State private var scrollDownTouchGestures = ["Right Index Pinch And Slide Up"]
    @State private var scrollLeftTouchGestures = ["Right Index Pinch and Slide Left"]
    @State private var scrollRightTouchGestures = ["Right Index Pinch and Slide Right"]
    @State private var scrollUpTouchGestures = ["Right Index Pinch and Slide Down"]
    
    // Speech & Audio
    @State private var toggleSpeechTouchGestures = ["Left Middle Pinch"]
    
    // Output
    @State private var readAllTouchGestures = ["Right Middle Pinch and Slide Down"]
    @State private var readFromTopTouchGestures = ["Right Middle Pinch and Slide Up"]
    @State private var readItemSummaryTouchGestures = ["Left Ring Pinch"]
    
    // VoiceOver
    @State private var describePassthroughTouchGestures = ["Left Ring Double Pinch"]
    @State private var labelItemsTouchGestures = ["Left Ring Modifier Right Ring Pinch"]
    @State private var openQuickSettingsTouchGestures = ["Left Index Modifier Right Ring Pinch"]
    @State private var showItemChooserTouchGestures = ["Left Middle Modifier Right Ring Pinch"]
    
    // System
    @State private var switchNextAppTouchGestures = ["Left Ring Modifier with Right Index Pinch"]
    @State private var switchPreviousAppTouchGestures = ["Left Ring Modifier with Right Middle Pinch"]
    
    // Other
    @State private var copySpeechClipboardTouchGestures = ["Left Middle Double Pinch"]
    
    // MARK: - Keyboard Shortcuts
    // Interaction
    @State private var activateKeyboardShortcuts = ["Space"]
    @State private var escapeKeyboardShortcuts = ["\u{0060}"]
    @State private var magicTapKeyboardShortcuts = ["\u{002D}"]
    @State private var performLongPressKeyboardShortcuts = ["\u{21E7} \u{004D}"]
    
    // Basic Navigation
    @State private var moveInKeyboardShortcuts = ["\u{21E7} \u{2193}"]
    @State private var moveOutKeyboardShortcuts = ["\u{21E7} \u{2191}"]
    @State private var moveBottomContainerKeyboardShortcuts = ["End \u{21E7}"]
    @State private var moveFirstItemKeyboardShortcuts = ["Home"]
    @State private var moveLastItemKeyboardShortcuts = ["End"]
    @State private var moveLinkedItemKeyboardShortcuts = ["J"]
    @State private var moveNextItemKeyboardShortcuts = ["\u{2192}"]
    @State private var moveNextVisibleAppKeyboardShortcuts = ["\u{005D}"]
    @State private var movePreviousItemKeyboardShortcuts = ["\u{2190}"]
    @State private var movePreviousVisibleAppKeyboardShortcuts = ["\u{005B}"]
    @State private var moveStatusBarKeyboardShortcuts = ["\u{004D}"]
    @State private var moveTopContainerKeyboardShortcuts = ["Home \u{21E7}"]
    
    // Text Navigation
    @State private var moveNextBlockquoteKeyboardShortcuts = ["\u{2318} \u{0051}"]
    @State private var moveNextColorChangeKeyboardShortcuts = ["\u{2318} \u{004B}"]
    @State private var moveNextFontChangeKeyboardShortcuts = ["\u{2318} \u{004F}"]
    @State private var moveNextItemBoldTextKeyboardShortcuts = ["\u{2318} \u{0042}"]
    @State private var moveNextItemItalicTextKeyboardShortcuts = ["\u{2318} \u{0049}"]
    @State private var moveNextItemPlainTextKeyboardShortcuts = ["\u{2318} \u{0050}"]
    @State private var moveNextItemUnderlinedTextKeyboardShortcuts = ["\u{2318} \u{0055}"]
    @State private var moveNextMisspelledWordKeyboardShortcuts = ["\u{2318} \u{0045}"]
    @State private var moveNextSameBlockquoteKeyboardShortcuts = ["\u{2318} \u{0057}"]
    @State private var moveNextStyleChangeKeyboardShortcuts = ["\u{2318} \u{0043}"]
    @State private var movePreviousBlockquoteKeyboardShortcuts = ["\u{2318} \u{21E7} \u{0051}"]
    @State private var movePreviousColorChangeKeyboardShortcuts = ["\u{2318} \u{21E7} \u{004B}"]
    @State private var movePreviousFontChangeKeyboardShortcuts = ["\u{2318} \u{21E7} \u{004F}"]
    @State private var movePreviousItemBoldTextKeyboardShortcuts = ["\u{2318} \u{21E7} \u{0042}"]
    @State private var movePreviousItemItalicTextKeyboardShortcuts = ["\u{2318} \u{21E7} \u{0049}"]
    @State private var movePreviousItemPlainTextKeyboardShortcuts = ["\u{2318} \u{21E7} \u{0050}"]
    @State private var movePreviousItemUnderlinedTextKeyboardShortcuts = ["\u{2318} \u{21E7} \u{0055}"]
    @State private var movePreviousMisspelledWordKeyboardShortcuts = ["\u{2318} \u{21E7} \u{0045}"]
    @State private var movePreviousSameBlockquoteKeyboardShortcuts = ["\u{2318} \u{21E7} \u{0057}"]
    @State private var movePreviousStyleChangeKeyboardShortcuts = ["\u{2318} \u{21E7} \u{0043}"]
    @State private var nextCharacterKeyboardShortcuts = ["\u{21E7} \u{2192}"]
    @State private var nextParagraphKeyboardShortcuts = ["\u{21E7} Page Down"]
    @State private var nextSentenceKeyboardShortcuts = ["\u{2318} Page Down"]
    @State private var nextWordKeyboardShortcuts = ["\u{2318} \u{0041}"]
    @State private var previousCharacterKeyboardShortcuts = ["\u{21E7} \u{2190}"]
    @State private var previousParagraphKeyboardShortcuts = ["\u{21E7} Page Up"]
    @State private var previousSentenceKeyboardShortcuts = ["\u{2318} Page Up"]
    @State private var previousWordKeyboardShortcuts = ["\u{2318} \u{21E7} \u{0041}"]
    
    // Advanced Navigation
    @State private var itemTextSearchKeyboardShortcuts = ["\u{0046}"]
    @State private var moveNextColumnKeyboardShortcuts = ["\u{2318} \u{0059}"]
    @State private var moveNextControlKeyboardShortcuts = ["\u{2318} \u{004A}"]
    @State private var moveNextDifferentItemKeyboardShortcuts = ["\u{2318} \u{0044}"]
    @State private var moveNextFrameKeyboardShortcuts = ["\u{2318} \u{0046}"]
    @State private var moveNextHeadingKeyboardShortcuts = ["\u{2318} \u{0048}"]
    @State private var moveNextImageKeyboardShortcuts = ["\u{2318} \u{0047}"]
    @State private var moveNextLinkKeyboardShortcuts = ["\u{2318} \u{004C}"]
    @State private var moveNextListKeyboardShortcuts = ["\u{2318} \u{0058}"]
    @State private var moveNextSameHeadingKeyboardShortcuts = ["\u{2318} \u{004D}"]
    @State private var moveNextSameItemKeyboardShortcuts = ["\u{2318} \u{0053}"]
    @State private var moveNextTableKeyboardShortcuts = ["\u{2318} \u{0054}"]
    @State private var moveNextVisitedLinkKeyboardShortcuts = ["\u{2318} \u{0056}"]
    @State private var movePreviousColumnKeyboardShortcuts = ["\u{2318} \u{21E7} \u{0059}"]
    @State private var movePreviousControlKeyboardShortcuts = ["\u{2318} \u{21E7} \u{004A}"]
    @State private var movePreviousDifferentItemKeyboardShortcuts = ["\u{2318} \u{21E7} \u{0044}"]
    @State private var movePreviousFrameKeyboardShortcuts = ["\u{2318} \u{21E7} \u{0046}"]
    @State private var movePreviousHeadingKeyboardShortcuts = ["\u{2318} \u{21E7} \u{0048}"]
    @State private var movePreviousImageKeyboardShortcuts = ["\u{2318} \u{21E7} \u{0047}"]
    @State private var movePreviousLinkKeyboardShortcuts = ["\u{2318} \u{21E7} \u{004C}"]
    @State private var movePreviousListKeyboardShortcuts = ["\u{2318} \u{21E7} \u{0058}"]
    @State private var movePreviousSameHeadingKeyboardShortcuts = ["\u{2318} \u{21E7} \u{004D}"]
    @State private var movePreviousSameItemKeyboardShortcuts = ["\u{2318} \u{21E7} \u{0053}"]
    @State private var movePreviousTableKeyboardShortcuts = ["\u{2318} \u{21E7} \u{0054}"]
    @State private var movePreviousVisitedLinkKeyboardShortcuts = ["\u{2318} \u{21E7} \u{0056}"]
    @State private var moveSystemFocusedItemKeyboardShortcuts = ["\u{21E7} Fn 4", "\u{21E7} F4"]
    @State private var nextSearchResultKeyboardShortcuts = ["\u{0047}"]
    @State private var previousSearchResultKeyboardShortcuts = ["\u{21E7} \u{0047}"]
    
    // Rotor
    @State private var nextRotorKeyboardShortcuts = ["\u{2318} \u{2192}"]
    @State private var nextRotorItemKeyboardShortcuts = ["\u{2193}", "\u{2318} \u{2193}"]
    @State private var previousRotorKeyboardShortcuts = ["\u{2318} \u{2190}"]
    @State private var previousRotorItemKeyboardShortcuts = ["\u{2191}", "\u{2318} \u{2191}"]
    
    // Speech & Audio
    @State private var toggleMuteKeyboardShortcuts = ["\u{0053}"]
    
    // Output
    @State private var describeAppLocationKeyboardShortcuts = ["\u{21E7} \u{0044}"]
    @State private var describeItemKeyboardShortcuts = ["\u{21E7} \u{004C}"]
    @State private var readAllKeyboardShortcuts = ["\u{0041}"]
    @State private var readCharacterKeyboardShortcuts = ["\u{0043}"]
    @State private var readFromTopKeyboardShortcuts = ["\u{0042}"]
    @State private var readHintKeyboardShortcuts = ["\u{21E7} \u{004E}"]
    @State private var readItemSummaryKeyboardShortcuts = ["F3", "Fn \u{0033}"]
    @State private var readLineKeyboardShortcuts = ["\u{004C}"]
    @State private var readRowHeaderKeyboardShortcuts = ["\u{0052}"]
    @State private var readSelectedTextKeyboardShortcuts = ["F6", "Fn \u{0036}"]
    @State private var readSystemFocusedItemSummaryKeyboardShortcuts = ["F4", "Fn \u{0034}"]
    @State private var readTableRowColumnKeyboardShortcuts = ["\u{21E7} \u{0054}"]
    @State private var readTextStyleKeyboardShortcuts = ["\u{0054}"]
    @State private var readURLKeyboardShortcuts = ["\u{21E7} \u{0055}"]
    @State private var readWordKeyboardShortcuts = ["\u{0057}"]
    
    // Braille
    @State private var toggleAnnouncementHistoryKeyboardShortcuts = ["\u{004E}"]
    
    // VoiceOver
    @State private var labelItemKeyboardShortcuts = ["\u{002F}"]
    @State private var openQuickSettingsKeyboardShortcuts = ["\u{0056}"]
    @State private var openVoiceOverSettingsKeyboardShortcuts = ["F8", "Fn \u{0038}"]
    @State private var showItemChooserKeyboardShortcuts = ["\u{0049}"]
    @State private var startHelpKeyboardShortcuts = ["\u{004B}"]
    @State private var toggleLockModifierKeysKeyboardShortcuts = ["\u{003B}"]
    @State private var toggleQuickNavKeyboardShortcuts = ["\u{21E7} \u{0051}"]
    @State private var toggleScreenCurtainKeyboardShortcuts = ["F11", "Fn \u{002D}"]
    @State private var toggleSingleLetterQuickNavKeyboardShortcuts = ["\u{0051}"]
    @State private var watchItemKeyboardShortcuts = ["\u{21E7} \u{002D}"]
    
    // System
    @State private var controlCenterKeyboardShortcuts = ["Page Down"]
    @State private var homeKeyboardShortcuts = ["\u{0048}"]
    @State private var notificationCenterKeyboardShortcuts = ["Page Up"]
    @State private var switchNextAppKeyboardShortcuts = ["\u{21E7} \u{005D}"]
    @State private var switchPreviousAppKeyboardShortcuts = ["\u{21E7} \u{005B}"]
    
    // Other
    @State private var copySpeechClipboardKeyboardShortcuts = ["\u{21E7} \u{0043}"]
    @State private var toggleTextSelectionKeyboardShortcuts = ["Return"]
    
    @State private var showingKeyboardShortcutAlert = false
    
    // MARK: - Quick Nav Shortcuts
    let quickNavShortcutViews = ["Activate", "Move to First Item", "Move to Last Item", "Move to Next Container", "Move to Next Item", "Move to Previous Container", "Move to Previous Item", "Next Rotor", "Next Rotor Item", "Previous Rotor", "Previous Rotor Item", "Scroll Down", "Scroll Left", "Scroll Right", "Scroll Up"]
    
    var body: some View {
        CustomList(title: title, editEnabled: true) {
            // MARK: - Touch Gestures
            Section("Touch Gestures") {
                switch title {
                case "Activate":
                    ForEach($activateTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Begin Passthrough Gesture":
                    ForEach($beginPassthroughGestureTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Enter Direct Gesture Mode":
                    ForEach($enterDirectGestureModeTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Escape":
                    ForEach($escapeTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Magic Tap":
                    ForEach($magicTapTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Perform Long Press":
                    ForEach($performLongPressTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Secondary Activate":
                    ForEach($secondaryActiveTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Exploration Mode":
                    ForEach($explorationModeTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Move to Next Item":
                    ForEach($moveNextItemTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Move to Previous Item":
                    ForEach($movePreviousItemTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Next Rotor":
                    ForEach($nextRotorTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Next Rotor Item":
                    ForEach($nextRotorItemTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Previous Rotor":
                    ForEach($previousRotorTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Previous Rotor Item":
                    ForEach($previousRotorItemTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Scroll Down":
                    ForEach($scrollDownTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Scroll Left":
                    ForEach($scrollLeftTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Scroll Right":
                    ForEach($scrollRightTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Scroll Up":
                    ForEach($scrollUpTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Toggle Speech":
                    ForEach($toggleSpeechTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Read All":
                    ForEach($readAllTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Read From Top":
                    ForEach($readFromTopTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Read Item Summary":
                    ForEach($readItemSummaryTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Describe Passthrough":
                    ForEach($describePassthroughTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Label Item":
                    ForEach($labelItemsTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Open Quick Settings":
                    ForEach($openQuickSettingsTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Show Item Chooser":
                    ForEach($showItemChooserTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Switch to Next App":
                    ForEach($switchNextAppTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Switch to Previous App":
                    ForEach($switchPreviousAppTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Copy Speech to Clipboard":
                    ForEach($copySpeechClipboardTouchGestures, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                default:
                    EmptyView()
                }
                Button("**Add Gesture**") {}
            }
            
            // MARK: - Keyboard Shortcuts
            Section {
                switch title {
                case "Activate":
                    ForEach($activateKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Escape":
                    ForEach($escapeKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Magic Tap":
                    ForEach($magicTapKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Perform Long Press":
                    ForEach($performLongPressKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move In":
                    ForEach($moveInKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move Out":
                    ForEach($moveOutKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Bottom of Container":
                    ForEach($moveBottomContainerKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to First Item":
                    ForEach($moveFirstItemKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Last Item":
                    ForEach($moveLastItemKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Linked Item":
                    ForEach($moveLinkedItemKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Next Item":
                    ForEach($moveNextItemKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Next Visible App":
                    ForEach($moveNextVisibleAppKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Previous Item":
                    ForEach($movePreviousItemKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Previous Visible App":
                    ForEach($movePreviousVisibleAppKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Status Bar":
                    ForEach($moveStatusBarKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Top of Container":
                    ForEach($moveTopContainerKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Next Blockquote":
                    ForEach($moveNextBlockquoteKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Next Color Change":
                    ForEach($moveNextColorChangeKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Next Font Change":
                    ForEach($moveNextFontChangeKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Next Item with Bold Text":
                    ForEach($moveNextItemBoldTextKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Next Item with Italic Text":
                    ForEach($moveNextItemItalicTextKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Next Item with Plain Text":
                    ForEach($moveNextItemPlainTextKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Next Item with Underlined Text":
                    ForEach($moveNextItemUnderlinedTextKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Next Misspelled Word":
                    ForEach($moveNextMisspelledWordKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Next Same Blockquote":
                    ForEach($moveNextSameBlockquoteKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Next Style Change":
                    ForEach($moveNextStyleChangeKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Previous Blockquote":
                    ForEach($movePreviousBlockquoteKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Previous Color Change":
                    ForEach($movePreviousColorChangeKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Previous Font Change":
                    ForEach($movePreviousFontChangeKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Previous Item with Bold Text":
                    ForEach($movePreviousItemBoldTextKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Previous Item with Italic Text":
                    ForEach($movePreviousItemItalicTextKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Previous Item with Plain Text":
                    ForEach($movePreviousItemPlainTextKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Previous Item with Underlined Text":
                    ForEach($movePreviousItemUnderlinedTextKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Previous Misspelled Word":
                    ForEach($movePreviousMisspelledWordKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Previous Same Blockquote":
                    ForEach($movePreviousSameBlockquoteKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Previous Style Change":
                    ForEach($movePreviousStyleChangeKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Next Character":
                    ForEach($nextCharacterKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Next Paragraph":
                    ForEach($nextParagraphKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Next Sentence":
                    ForEach($nextSentenceKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Next Word":
                    ForEach($nextWordKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Previous Character":
                    ForEach($previousCharacterKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Previous Paragraph":
                    ForEach($previousParagraphKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Previous Sentence":
                    ForEach($previousSentenceKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Previous Word":
                    ForEach($previousWordKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Item Text Search":
                    ForEach($itemTextSearchKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Next Column":
                    ForEach($moveNextColumnKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Next Control":
                    ForEach($moveNextControlKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Next Different Item":
                    ForEach($moveNextDifferentItemKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Next Frame":
                    ForEach($moveNextFrameKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Next Heading":
                    ForEach($moveNextHeadingKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Next Image":
                    ForEach($moveNextImageKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Next Link":
                    ForEach($moveNextLinkKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Next List":
                    ForEach($moveNextListKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Next Same Heading":
                    ForEach($moveNextSameHeadingKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Next Same Item":
                    ForEach($moveNextSameItemKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Next Table":
                    ForEach($moveNextTableKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Next Visited Link":
                    ForEach($moveNextVisitedLinkKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Previous Column":
                    ForEach($movePreviousColumnKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Previous Control":
                    ForEach($movePreviousControlKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Previous Different Item":
                    ForEach($movePreviousDifferentItemKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Previous Frame":
                    ForEach($movePreviousFrameKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Previous Heading":
                    ForEach($movePreviousHeadingKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Previous Image":
                    ForEach($movePreviousImageKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Previous Link":
                    ForEach($movePreviousLinkKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Previous List":
                    ForEach($movePreviousListKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Previous Same Heading":
                    ForEach($movePreviousSameHeadingKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Previous Same Item":
                    ForEach($movePreviousSameItemKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Previous Table":
                    ForEach($movePreviousTableKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to Previous Visited Link":
                    ForEach($movePreviousVisitedLinkKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Move to System-Focused Item":
                    ForEach($moveSystemFocusedItemKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Next Search Result":
                    ForEach($nextSearchResultKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Previous Search Result":
                    ForEach($previousSearchResultKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Next Rotor":
                    ForEach($nextRotorKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Next Rotor Item":
                    ForEach($nextRotorItemKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Previous Rotor":
                    ForEach($previousRotorKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Previous Rotor Item":
                    ForEach($previousRotorItemKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Toggle Mute":
                    ForEach($toggleMuteKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Describe App Location":
                    ForEach($describeAppLocationKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Describe Item":
                    ForEach($describeItemKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Read All":
                    ForEach($readAllKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Read Character":
                    ForEach($readCharacterKeyboardShortcuts, id: \.self, editActions: .delete) { $shortcut in
                        Text(shortcut)
                    }
                case "Read From Top":
                    ForEach($readFromTopKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Read Hint":
                    ForEach($readHintKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Read Item Summary":
                    ForEach($readItemSummaryKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Read Line":
                    ForEach($readLineKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Read Row Header":
                    ForEach($readRowHeaderKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Read Selected Text":
                    ForEach($readSelectedTextKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Read System-Focused Item Summary":
                    ForEach($readSystemFocusedItemSummaryKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Read Table Row Column":
                    ForEach($readTableRowColumnKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Read Text Style":
                    ForEach($readTextStyleKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Read URL":
                    ForEach($readURLKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Read Word":
                    ForEach($readWordKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Toggle Announcement History":
                    ForEach($toggleAnnouncementHistoryKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Label Item":
                    ForEach($labelItemKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Open Quick Settings":
                    ForEach($openQuickSettingsKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Open VoiceOver Settings":
                    ForEach($openVoiceOverSettingsKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Show Item Chooser":
                    ForEach($showItemChooserKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Start Help":
                    ForEach($startHelpKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Toggle Lock Modifier Keys":
                    ForEach($toggleLockModifierKeysKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Toggle Quick Nav":
                    ForEach($toggleQuickNavKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Toggle Screen Curtain":
                    ForEach($toggleScreenCurtainKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Toggle Single Letter Quick Nav":
                    ForEach($toggleSingleLetterQuickNavKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Watch Item":
                    ForEach($watchItemKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Control Center":
                    ForEach($controlCenterKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Home":
                    ForEach($homeKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Notification Center":
                    ForEach($notificationCenterKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Switch to Next App":
                    ForEach($switchNextAppKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Switch to Previous App":
                    ForEach($switchPreviousAppKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Copy Speech to Clipboard":
                    ForEach($copySpeechClipboardKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                case "Toggle Text Selection":
                    ForEach($toggleTextSelectionKeyboardShortcuts, id: \.self, editActions: .delete) { $gesture in
                        Text(gesture)
                    }
                default:
                    EmptyView()
                }
                Button("**Add Keyboard Shortcut**") { showingKeyboardShortcutAlert.toggle() }
                    .alert("Keyboard Shortcut", isPresented: $showingKeyboardShortcutAlert) {
                        Button("Done") {}.disabled(true)
                        Button("Cancel", role: .cancel) {}
                    } message: {
                        Text("Enter a key combination on your keyboard.")
                    }
            } header: {
                Text("Keyboard Shortcuts")
            } footer: {
                Text("Commands are prefixed with the VoiceOver modifier key: Control + Option")
            }
            
            if quickNavShortcutViews.contains(title) {
                Section("Quick Nav Shortcuts") {
                    Group {
                        switch title {
                        case "Activate":
                            Text("\u{2192} \u{2191} \u{2190}")
                            Text("\u{2193} \u{2191}")
                        case "Move to First Item":
                            Text("\u{005E} \u{2191}")
                        case "Move to Last Item":
                            Text("\u{005E} \u{2193}")
                        case "Move to Next Container":
                            Text("\u{005E} \u{2192}")
                        case "Move to Next Item":
                            Text("\u{2192}")
                        case "Move to Previous Container":
                            Text("\u{005E} \u{2190}")
                        case "Move to Previous Item":
                            Text("\u{2190}")
                        case "Next Rotor":
                            Text("\u{2192} \u{2191}")
                        case "Next Rotor Item":
                            Text("\u{2193}")
                        case "Previous Rotor":
                            Text("\u{2191} \u{2190}")
                        case "Previous Rotor Item":
                            Text("\u{2191}")
                        case "Scroll Down":
                            Text("\u{2325} \u{2193}")
                        case "Scroll Left":
                            Text("\u{2325} \u{2190}")
                        case "Scroll Right":
                            Text("\u{2325} \u{2192}")
                        case "Scroll Up":
                            Text("\u{2325} \u{2191}")
                        default:
                            EmptyView()
                        }
                    }
                    .foregroundStyle(.secondary)
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        AllCommandsView()
    }
}
