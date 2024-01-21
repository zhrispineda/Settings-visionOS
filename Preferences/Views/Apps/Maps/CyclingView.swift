//
//  CyclingView.swift
//  Preferences
//
//  Settings > Maps > Cycling
//

import SwiftUI

struct CyclingView: View {
    // Variables
    @State private var avoidHillsEnabled = false
    @State private var avoidBusyRoads = false
    
    var body: some View {
        List {
            Section(content: {
                Toggle("Hills", isOn: $avoidHillsEnabled)
                Toggle("Busy Roads", isOn: $avoidBusyRoads)
            }, header: {
                Text("Avoid")
            })
        }
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Cycling")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    CyclingView()
}
