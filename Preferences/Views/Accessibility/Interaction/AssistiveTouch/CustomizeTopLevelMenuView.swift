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
                HStack {
                    Spacer()
                    Text("\(icons) Icon\(icons == 1 ? "" : "s")")
                    Button(action: {
                        icons -= 1
                        print(icons)
                    }, label: {
                        Image(systemName: "minus.circle.fill")
                            .font(.extraLargeTitle2)
                            .fontWeight(.light)
                            .foregroundStyle(.white, .gray.opacity(0.4))
                    })
                    .buttonStyle(.plain)
                    .disabled(icons == 1)
                    Button(action: {
                        icons += 1
                    }, label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.extraLargeTitle2)
                            .fontWeight(.light)
                            .foregroundStyle(.white, .gray.opacity(0.4))
                    })
                    .buttonStyle(.plain)
                    .disabled(icons == 8)
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
