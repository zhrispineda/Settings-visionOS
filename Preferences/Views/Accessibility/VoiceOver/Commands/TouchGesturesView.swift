//
//  TouchGesturesView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Commands > Touch Gestures
//

import SwiftUI

struct TouchGesture: Identifiable {
    var id: String { name }
    let name: String
    let gesture: String
}

struct SoundAction: Identifiable {
    var id: String { name }
    let name: String
    let action: String
}

struct TouchGesturesView: View {
    // Variables
    @State private var searchText = String()
    
    var rightHandPinches: [TouchGesture] = [
        TouchGesture(name: "Right Index Pinch", gesture: "Move to Next Item"),
        TouchGesture(name: "Right Middle Pinch", gesture: "Move to Previous Item"),
        TouchGesture(name: "Right Ring Pinch", gesture: "Activate"),
        TouchGesture(name: "Right Index Double Pinch", gesture: ""),
        TouchGesture(name: "Right Middle Double Pinch", gesture: ""),
        TouchGesture(name: "Right Ring Double Pinch", gesture: "Perform Long Press"),
        TouchGesture(name: "Right Index Long Pinch", gesture: "Exploration Mode"),
        TouchGesture(name: "Right Middle Long Pinch", gesture: "Escape"),
        TouchGesture(name: "Right Ring Long Pinch", gesture: ""),
        TouchGesture(name: "Right Index Double Long Pinch", gesture: ""),
        TouchGesture(name: "Right Middle Double Long Pinch", gesture: ""),
        TouchGesture(name: "Right Ring Double Long Pinch", gesture: "Begin Passthrough Gesture")
    ]
    
    var leftHandPinches: [TouchGesture] = [
        TouchGesture(name: "Left Index Pinch", gesture: "Activate"),
        TouchGesture(name: "Left Middle Pinch", gesture: "Toggle Speech"),
        TouchGesture(name: "Left Ring Pinch", gesture: "Read Item Summary"),
        TouchGesture(name: "Left Index Double Pinch", gesture: "Perform Long Press"),
        TouchGesture(name: "Left Middle Double Pinch", gesture: "Copy Speech to Clipboard"),
        TouchGesture(name: "Left Ring Double Pinch", gesture: "Describe Passthrough"),
        TouchGesture(name: "Left Index Long Pinch", gesture: ""),
        TouchGesture(name: "Left Middle Long Pinch", gesture: ""),
        TouchGesture(name: "Left Ring Long Pinch", gesture: ""),
        TouchGesture(name: "Left Index Double Long Pinch", gesture: "Begin Passthrough Gesture"),
        TouchGesture(name: "Left Middle Double Long Pinch", gesture: ""),
        TouchGesture(name: "Left Ring Double Long Pinch", gesture: "")
    ]
    
    var rightHandPinchSlide: [TouchGesture] = [
        TouchGesture(name: "Right Index Pinch And Slide Up", gesture: "Scroll Down"),
        TouchGesture(name: "Right Index Pinch And Slide Down", gesture: "Scroll Up"),
        TouchGesture(name: "Right Index Pinch And Slide Left", gesture: "Scroll Left"),
        TouchGesture(name: "Right Index Pinch And Slide Right", gesture: "Scroll Right"),
        TouchGesture(name: "Right Middle Pinch And Slide Up", gesture: "Read From Top"),
        TouchGesture(name: "Right Middle Pinch And Slide Down", gesture: "Read All"),
        TouchGesture(name: "Right Middle Pinch And Slide Left", gesture: ""),
        TouchGesture(name: "Right Middle Pinch And Slide Right", gesture: ""),
        TouchGesture(name: "Right Ring Pinch And Slide Up", gesture: ""),
        TouchGesture(name: "Right Ring Pinch And Slide Down", gesture: ""),
        TouchGesture(name: "Right Ring Pinch And Slide Left", gesture: ""),
        TouchGesture(name: "Right Ring Pinch And Slide Right", gesture: "")
    ]
    
    var leftHandPinchSlide: [TouchGesture] = [
        TouchGesture(name: "Left Index Pinch And Slide Up", gesture: ""),
        TouchGesture(name: "Left Index Pinch And Slide Down", gesture: ""),
        TouchGesture(name: "Left Index Pinch And Slide Left", gesture: ""),
        TouchGesture(name: "Left Index Pinch And Slide Right", gesture: ""),
        TouchGesture(name: "Left Middle Pinch And Slide Up", gesture: ""),
        TouchGesture(name: "Left Middle Pinch And Slide Down", gesture: ""),
        TouchGesture(name: "Left Middle Pinch And Slide Left", gesture: ""),
        TouchGesture(name: "Left Middle Pinch And Slide Right", gesture: ""),
        TouchGesture(name: "Left Ring Pinch And Slide Up", gesture: ""),
        TouchGesture(name: "Left Ring Pinch And Slide Down", gesture: ""),
        TouchGesture(name: "Left Ring Pinch And Slide Left", gesture: ""),
        TouchGesture(name: "Left Ring Pinch And Slide Right", gesture: "")
    ]
    
    var rightHandPinchesModifiedLeftIndexFinger: [TouchGesture] = [
        TouchGesture(name: "Left Index Mondifier with Right Index Pinch", gesture: "Next Rotor Item"),
        TouchGesture(name: "Left Index Mondifier with Right Middle Pinch", gesture: "Previous Rotor Item"),
        TouchGesture(name: "Left Index Mondifier with Right Ring Pinch", gesture: "Open Quick Settings"),
        TouchGesture(name: "Left Index Modifier with Right Index Long Pinch", gesture: ""),
        TouchGesture(name: "Left Index Modifier with Right Middle Long Pinch", gesture: ""),
        TouchGesture(name: "Left Index Modifier with Right Ring Long Pinch", gesture: ""),
        TouchGesture(name: "Left Index Modifier with Right Index Double Pinch", gesture: ""),
        TouchGesture(name: "Left Index Modifier with Right Middle Double Pinch", gesture: ""),
        TouchGesture(name: "Left Index Modifier with Right Ring Double Pinch", gesture: ""),
        TouchGesture(name: "Left Index Modifier with Right Index Double Long Pinch", gesture: ""),
        TouchGesture(name: "Left Index Modifier with Right Middle Double Long Pinch", gesture: ""),
        TouchGesture(name: "Left Index Modifier with Right Ring Double Long Pinch", gesture: "")
    ]
    
    var rightHandPinchesModifiedLeftMiddleFinger: [TouchGesture] = [
        TouchGesture(name: "Left Middle Mondifier with Right Index Pinch", gesture: "Next Rotor"),
        TouchGesture(name: "Left Middle Mondifier with Right Middle Pinch", gesture: "Previous Rotor"),
        TouchGesture(name: "Left Middle Mondifier with Right Ring Pinch", gesture: "Show Item Chooser"),
        TouchGesture(name: "Left Middle Modifier with Right Index Long Pinch", gesture: ""),
        TouchGesture(name: "Left Middle Modifier with Right Middle Long Pinch", gesture: ""),
        TouchGesture(name: "Left Middle Modifier with Right Ring Long Pinch", gesture: ""),
        TouchGesture(name: "Left Middle Modifier with Right Index Double Pinch", gesture: ""),
        TouchGesture(name: "Left Middle Modifier with Right Middle Double Pinch", gesture: ""),
        TouchGesture(name: "Left Middle Modifier with Right Ring Double Pinch", gesture: ""),
        TouchGesture(name: "Left Middle Modifier with Right Index Double Long Pinch", gesture: ""),
        TouchGesture(name: "Left Middle Modifier with Right Middle Double Long Pinch", gesture: ""),
        TouchGesture(name: "Left Middle Modifier with Right Ring Double Long Pinch", gesture: "")
    ]
    
    var rightHandPinchesModifiedLeftRingFinger: [TouchGesture] = [
        TouchGesture(name: "Left Ring Mondifier with Right Index Pinch", gesture: "Switch to Next App"),
        TouchGesture(name: "Left Ring Mondifier with Right Middle Pinch", gesture: "Switch to Previous App"),
        TouchGesture(name: "Left Ring Mondifier with Right Ring Pinch", gesture: "Label Item"),
        TouchGesture(name: "Left Ring Modifier with Right Index Long Pinch", gesture: ""),
        TouchGesture(name: "Left Ring Modifier with Right Middle Long Pinch", gesture: ""),
        TouchGesture(name: "Left Ring Modifier with Right Ring Long Pinch", gesture: ""),
        TouchGesture(name: "Left Ring Modifier with Right Index Double Pinch", gesture: ""),
        TouchGesture(name: "Left Ring Modifier with Right Middle Double Pinch", gesture: ""),
        TouchGesture(name: "Left Ring Modifier with Right Ring Double Pinch", gesture: ""),
        TouchGesture(name: "Left Ring Modifier with Right Index Double Long Pinch", gesture: ""),
        TouchGesture(name: "Left Ring Modifier with Right Middle Double Long Pinch", gesture: ""),
        TouchGesture(name: "Left Ring Modifier with Right Ring Double Long Pinch", gesture: "")
    ]
    
    var leftHandPinchesModifiedRightIndexFinger: [TouchGesture] = [
        TouchGesture(name: "Right Index Mondifier with Left Index Pinch", gesture: ""),
        TouchGesture(name: "Right Index Mondifier with Left Middle Pinch", gesture: ""),
        TouchGesture(name: "Right Index Mondifier with Left Ring Pinch", gesture: ""),
        TouchGesture(name: "Right Index Modifier with Left Index Long Pinch", gesture: ""),
        TouchGesture(name: "Right Index Modifier with Left Middle Long Pinch", gesture: ""),
        TouchGesture(name: "Right Index Modifier with Left Ring Long Pinch", gesture: ""),
        TouchGesture(name: "Right Index Modifier with Left Index Double Pinch", gesture: ""),
        TouchGesture(name: "Right Index Modifier with Left Middle Double Pinch", gesture: ""),
        TouchGesture(name: "Right Index Modifier with Left Ring Double Pinch", gesture: ""),
        TouchGesture(name: "Right Index Modifier with Left Index Double Long Pinch", gesture: ""),
        TouchGesture(name: "Right Index Modifier with Left Middle Double Long Pinch", gesture: ""),
        TouchGesture(name: "Right Index Modifier with Left Ring Double Long Pinch", gesture: "")
    ]
    
    var leftHandPinchesModifiedRightMiddleFinger: [TouchGesture] = [
        TouchGesture(name: "Right Middle Mondifier with Left Index Pinch", gesture: ""),
        TouchGesture(name: "Right Middle Mondifier with Left Middle Pinch", gesture: ""),
        TouchGesture(name: "Right Middle Mondifier with Left Ring Pinch", gesture: ""),
        TouchGesture(name: "Right Middle Modifier with Left Index Long Pinch", gesture: ""),
        TouchGesture(name: "Right Middle Modifier with Left Middle Long Pinch", gesture: ""),
        TouchGesture(name: "Right Middle Modifier with Left Ring Long Pinch", gesture: ""),
        TouchGesture(name: "Right Middle Modifier with Left Index Double Pinch", gesture: ""),
        TouchGesture(name: "Right Middle Modifier with Left Middle Double Pinch", gesture: ""),
        TouchGesture(name: "Right Middle Modifier with Left Ring Double Pinch", gesture: ""),
        TouchGesture(name: "Right Middle Modifier with Left Index Double Long Pinch", gesture: ""),
        TouchGesture(name: "Right Middle Modifier with Left Middle Double Long Pinch", gesture: ""),
        TouchGesture(name: "Right Middle Modifier with Left Ring Double Long Pinch", gesture: "")
    ]
    
    var leftHandPinchesModifiedRightRingFinger: [TouchGesture] = [
        TouchGesture(name: "Right Ring Mondifier with Left Index Pinch", gesture: ""),
        TouchGesture(name: "Right Ring Mondifier with Left Middle Pinch", gesture: ""),
        TouchGesture(name: "Right Ring Mondifier with Left Ring Pinch", gesture: ""),
        TouchGesture(name: "Right Ring Modifier with Left Index Long Pinch", gesture: ""),
        TouchGesture(name: "Right Ring Modifier with Left Middle Long Pinch", gesture: ""),
        TouchGesture(name: "Right Ring Modifier with Left Ring Long Pinch", gesture: ""),
        TouchGesture(name: "Right Ring Modifier with Left Index Double Pinch", gesture: ""),
        TouchGesture(name: "Right Ring Modifier with Left Middle Double Pinch", gesture: ""),
        TouchGesture(name: "Right Ring Modifier with Left Ring Double Pinch", gesture: ""),
        TouchGesture(name: "Right Ring Modifier with Left Index Double Long Pinch", gesture: ""),
        TouchGesture(name: "Right Ring Modifier with Left Middle Double Long Pinch", gesture: ""),
        TouchGesture(name: "Right Ring Modifier with Left Ring Double Long Pinch", gesture: "")
    ]
    
    var soundActions: [SoundAction] = [
        SoundAction(name: "Practice", action: ""),
        SoundAction(name: "Click", action: ""),
        SoundAction(name: "Cluck", action: ""),
        SoundAction(name: "Ee", action: ""),
        SoundAction(name: "Eh", action: ""),
        SoundAction(name: "Kk", action: ""),
        SoundAction(name: "La", action: ""),
        SoundAction(name: "Muh", action: ""),
        SoundAction(name: "Oo", action: ""),
        SoundAction(name: "Pop", action: ""),
        SoundAction(name: "Pp", action: ""),
        SoundAction(name: "Sh", action: ""),
        SoundAction(name: "Ss", action: ""),
        SoundAction(name: "Tt", action: ""),
        SoundAction(name: "Uh", action: "")
    ]
    
    var body: some View {
        List {
            Section(content: {
                ForEach(rightHandPinches) { item in
                    Button(action: {}, label: {
                        ListRowLabel(title: item.name, subtitle: item.gesture)
                    })
                }
            }, header: {
                Text("Right Hand Pinches")
            })
            
            Section(content: {
                ForEach(leftHandPinches) { item in
                    Button(action: {}, label: {
                        ListRowLabel(title: item.name, subtitle: item.gesture)
                    })
                }
            }, header: {
                Text("Left Hand Pinches")
            })
            
            Section(content: {
                ForEach(rightHandPinchSlide) { item in
                    Button(action: {}, label: {
                        ListRowLabel(title: item.name, subtitle: item.gesture)
                    })
                }
            }, header: {
                Text("Right Hand Pinch and Slide")
            })
            
            Section(content: {
                ForEach(leftHandPinchSlide) { item in
                    Button(action: {}, label: {
                        ListRowLabel(title: item.name, subtitle: item.gesture)
                    })
                }
            }, header: {
                Text("Left Hand Pinch and Slide")
            })
            
            Section(content: {
                ForEach(rightHandPinchesModifiedLeftIndexFinger) { item in
                    Button(action: {}, label: {
                        ListRowLabel(title: item.name, subtitle: item.gesture)
                    })
                }
            }, header: {
                Text("Right Hand Pinches Modified by Left Index Finger")
            })
            
            Section(content: {
                ForEach(rightHandPinchesModifiedLeftMiddleFinger) { item in
                    Button(action: {}, label: {
                        ListRowLabel(title: item.name, subtitle: item.gesture)
                    })
                }
            }, header: {
                Text("Right Hand Pinches Modified by Left Middle Finger")
            })
            
            Section(content: {
                ForEach(rightHandPinchesModifiedLeftRingFinger) { item in
                    Button(action: {}, label: {
                        ListRowLabel(title: item.name, subtitle: item.gesture)
                    })
                }
            }, header: {
                Text("Right Hand Pinches Modified by Left Ring Finger")
            })
            
            Section(content: {
                ForEach(leftHandPinchesModifiedRightIndexFinger) { item in
                    Button(action: {}, label: {
                        ListRowLabel(title: item.name, subtitle: item.gesture)
                    })
                }
            }, header: {
                Text("Left Hand Pinches Modified by Right Index Finger")
            })
            
            Section(content: {
                ForEach(leftHandPinchesModifiedRightMiddleFinger) { item in
                    Button(action: {}, label: {
                        ListRowLabel(title: item.name, subtitle: item.gesture)
                    })
                }
            }, header: {
                Text("Left Hand Pinches Modified by Right Middle Finger")
            })
            
            Section(content: {
                ForEach(leftHandPinchesModifiedRightRingFinger) { item in
                    Button(action: {}, label: {
                        ListRowLabel(title: item.name, subtitle: item.gesture)
                    })
                }
            }, header: {
                Text("Left Hand Pinches Modified by Right Ring Finger")
            })
            
            Section(content: {
                ForEach(soundActions) { sound in
                    Button(action: {}, label: {
                        ListRowLabel(title: sound.name, subtitle: sound.action)
                    })
                }
            }, header: {
                Text("Sound Actions")
            })
        }
        .padding(.horizontal, 45)
        .searchable(text: $searchText)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                Text("Touch Gestures")
                    .font(.title2)
                    .frame(maxWidth: .infinity)
                    .offset(x: 50)
            })
        }
    }
}

#Preview {
    NavigationStack {
        TouchGesturesView()
    }
}
