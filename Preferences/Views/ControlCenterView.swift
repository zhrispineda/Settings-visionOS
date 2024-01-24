//
//  ControlCenterView.swift
//  Settings-visionOS
//
//  Settings > Control Center
//

import SwiftUI

struct ControlCenterView: View {
    var body: some View {
        CustomList(title: "Control Center") {
            Section(content: {
                
            }, header: {
                Text("Included Controls")
            })
            
            Section(content: {
                
            }, header: {
                Text("More Controls")
            })
        }
    }
}

#Preview {
    ControlCenterView()
}
