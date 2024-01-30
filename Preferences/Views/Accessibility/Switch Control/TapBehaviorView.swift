//
//  TapBehaviorView.swift
//  Preferences
//
//  Settings > Accessibility > Switch Control > Tap Behavior
//

import SwiftUI

struct TapBehaviorView: View {
    // Variables
    @State private var selected = "Default"
    let options = ["Default", "Auto Tap", "Always Tap"]
    @State private var time = 0.75
    
    var body: some View {
        CustomList(title: "Tap Behavior") {
            Section(content: {
                ForEach(options, id: \.self) { option in
                    Button(action: {
                        withAnimation {
                            selected = option
                        }
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selected == option ? "checkmark" : "")")
                        }
                    })
                }
            }, footer: {
                switch selected {
                case "Auto Tap":
                    Text("Auto Tap will cause the Select action to automatically tap the screen unless Select is pressed twice to show the Scanner Menu.")
                case "Always Tap":
                    Text("Always Tap will cause the Select actioin to immediately select the focused item instead of showing the Scanner Menu. A menu icon will appear at the end of the scan cycle so the Scanner Menu can be displayed.\n\nNote that Always Tap only applies to Item Mode. In Gliding Cursor and Head Tracking mode, the behavior will revert to Default.")
                default:
                    Text("Tap Behavior describes what happens when the Select action is activated. By default, it will display the Scanner Menu.")
                }
            })
            
            if selected == "Auto Tap" {
                Section {
                    HStack(spacing: 15) {
                        Text("\(time, specifier: "%.2f")")
                        Text("\(time == 1.00 ? "Second" : "Seconds")")
                            .foregroundStyle(.secondary)
                        Spacer()
                        Button(action: {
                            time -= 0.20
                        }, label: {
                            Image(systemName: "minus.circle.fill")
                                .font(.extraLargeTitle2)
                                .fontWeight(.medium)
                                .foregroundStyle(.white, .secondary.opacity(0.3))
                        })
                        .buttonStyle(.plain)
                        .disabled(time < 0.21)
                        Button(action: {
                            time += 0.20
                        }, label: {
                            Image(systemName: "plus.circle.fill")
                                .font(.extraLargeTitle2)
                                .fontWeight(.medium)
                                .foregroundStyle(.white, .secondary.opacity(0.3))
                        })
                        .buttonStyle(.plain)
                        .disabled(time > 19.99)
                    }
                }
            }
        }
    }
}

#Preview {
    TapBehaviorView()
}
