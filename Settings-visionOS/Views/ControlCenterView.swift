//
//  ControlCenterView.swift
//  Settings-visionOS
//
//  Settings > Control Center
//

import SwiftUI

struct ControlCenterView: View {
    var body: some View {
        List {
            Section(content: {
                
            }, header: {
                Text("Included Controls")
            })
            
            Section(content: {
                
            }, header: {
                Text("More Controls")
            })
        }
        .padding([.leading, .trailing], 30)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Control Center")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
            })
        }
    }
}

#Preview {
    ControlCenterView()
}
