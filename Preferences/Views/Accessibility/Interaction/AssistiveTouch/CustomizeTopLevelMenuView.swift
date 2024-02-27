//
//  CustomizeTopLevelMenuView.swift
//  Preferences
//
//  Settings > Accessibility > Interaction > AssistiveTouch > Customize Top Level Menu
//

import SwiftUI

struct CustomizeTopLevelMenuView: View {
    @State private var icons = 6
    
    var body: some View {
        CustomList(title: "Customize Top Level Menu") {
            Section(content: {
                HStack {
                    ForEach(1...icons, id: \.self) { _ in
                        Button(action: {
                            // TODO
                        }, label: {
                            Image(systemName: "square.dotted")
                                .font(.extraLargeTitle)
                        })
                        .buttonStyle(.plain)
                    }
                }
                .frame(maxWidth: .infinity)
                .listRowBackground(Color.clear)
                Stepper(
                    value: $icons,
                    in: 1...8,
                    step: 1
                ) {
                    HStack {
                        Spacer()
                        Text("\(icons)")
                        Text(icons == 1 ? "Icon" : "Icons")
                    }
                }
            }, header: {
                Text("Tap an icon to change:")
            })
            
            Section {
                Button(action: {
                    icons = 6
                }, label: {
                    Text("Reset...")
                        .frame(maxWidth: .infinity)
                })
            }
        }
    }
}

#Preview {
    NavigationStack {
        CustomizeTopLevelMenuView()
    }
}
