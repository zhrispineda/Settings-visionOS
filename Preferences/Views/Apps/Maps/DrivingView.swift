//
//  DrivingView.swift
//  Preferences
//
//  Settings > Apps > Maps > Driving
//

import SwiftUI

struct DrivingView: View {
    // Variables
    @State private var avoidTollsEnabled = false
    @State private var avoidHighwaysEnabled = false
    
    var body: some View {
        List {
            Section(content: {
                Toggle("Tolls", isOn: $avoidTollsEnabled)
                Toggle("Highways", isOn: $avoidHighwaysEnabled)
            }, header: {
                Text("Avoid")
            })
        }
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Driving")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    DrivingView()
}
