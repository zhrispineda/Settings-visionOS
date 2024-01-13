//
//  ControlCenterView.swift
//  Settings-visionOS
//
//  Created by Chris on 1/13/24.
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
        .padding([.leading, .trailing], 25)
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
