//
//  DisplayView.swift
//  Settings-visionOS
//
//  Created by Chris on 1/13/24.
//

import SwiftUI

struct DisplayView: View {
    // Variables
    @State private var boldTextEnabled = false
    @State private var brightness = CGFloat(0.5)
    
    var body: some View {
        List {
            Section {
                NavigationLink("Text Size", destination: {})
                Toggle("Bold Text", isOn: $boldTextEnabled)
            }
            
            Section(content: {
                Group {
                    Slider(value: $brightness,
                           in: 0.0...1.0,
                           minimumValueLabel: Image(systemName: "sun.min.fill"),
                           maximumValueLabel: Image(systemName: "sun.max.fill"),
                           label: {
                                Text("Volume")
                            }
                    )
                }
                .imageScale(.large)
            }, header: {
                Text("Brightness")
            })
            
            Section(content: {
                ListRowNavigationLabel(title: "Appearance", subtitle: "Large", content: AnyView(EmptyView()))
            }, header: {
                Text("Display")
            })
        }
        .padding([.leading, .trailing], 25)
        .navigationTitle("Display")
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Display")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
            })
        }
    }
}

#Preview {
    DisplayView()
}
