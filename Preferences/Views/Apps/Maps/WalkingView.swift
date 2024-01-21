//
//  WalkingView.swift
//  Preferences
//
//  Settings > Apps > Maps > Walking
//

import SwiftUI

struct WalkingView: View {
    // Variables
    @State private var avoidHillsEnabled = false
    @State private var avoidBusyRoadsEnabled = false
    @State private var avoidStairsEnabled = false
    
    var body: some View {
        List {
            Section(content: {
                Toggle("Hills", isOn: $avoidHillsEnabled)
                Toggle("Busy Roads", isOn: $avoidBusyRoadsEnabled)
                Toggle("Stairs", isOn: $avoidStairsEnabled)
            }, header: {
                Text("Avoid")
            })
        }
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Walking")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    WalkingView()
}
