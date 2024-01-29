//
//  SingleTapView.swift
//  Preferences
//
//  Settings > Accessibility > Interaction > AssistiveTouch > Single-Tap
//  Settings > Accessibility > Interaction > AssistiveTouch > Double-Tap
//  Settings > Accessibility > Interaction > AssistiveTouch > Long-Tap
//

import SwiftUI

struct AssistiveTouchTapView: View {
    // Variables
    var title = String()
    @State private var selected = "None"
    let systemOptions = ["None", "Open Menu", "Pass Through to App", "Analytics", "App Switcher", "Control Center", "Hold and Drag", "Home", "Lock Screen", "Long Press", "Move Menu", "Notification Center", "Pinch", "Pinch and Rotate", "Reachability", "Restart", "Rotate", "Screenshot", "Siri", "Spotlight", "Volume Up", "Volume Down"]
    let accessibilityOptions = ["Accessibility Shortcut", "Speak Screen"]
    let scrollGestures = ["Continuos Horizontal Scroll", "Continuous Verical Scroll", "Scroll Down", "Scroll Left", "Scroll Right", "Scroll to Bottom", "Scroll to Top", "Scroll Up"]
    
    var body: some View {
        CustomList(title: title) {
            if title == "Double-Tap" {
                ListRowNavigationLabel(title: "Double-Tap Timeout", subtitle: "\(selected == "None" ? "Off" : "0.3s")", content: DoubleTapTimeoutView())
            } else if title == "Long Press" {
                ListRowNavigationLabel(title: "Long Press Duration", subtitle: "\(selected == "None" ? "Off" : "0.75s")", content: LongPressDurationView())
            }
            
            Section(content: {
                ForEach(systemOptions, id: \.self) { option in
                    Button(action: {
                        selected = option
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selected == option ? "checkmark" : "")")
                        }
                    })
                }
            }, header: {
                Text("System")
            })
            
            Section(content: {
                ForEach(accessibilityOptions, id: \.self) { option in
                    Button(action: {
                        selected = option
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selected == option ? "checkmark" : "")")
                        }
                    })
                }
            }, header: {
                Text("Accessibility")
            })
            
            Section(content: {
                ForEach(scrollGestures, id: \.self) { option in
                    Button(action: {
                        selected = option
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selected == option ? "checkmark" : "")")
                        }
                    })
                }
            }, header: {
                Text("Scroll Gestures")
            })
        }
    }
}

#Preview {
    AssistiveTouchTapView()
}
