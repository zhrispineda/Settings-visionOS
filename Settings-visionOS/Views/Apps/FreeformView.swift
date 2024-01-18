//
//  FreeformView.swift
//  Settings-visionOS
//
//  Settings > Apps > Freeform
//

import SwiftUI

struct FreeformView: View {
    // Variables
    @State private var centerGuidesEnabled = true
    @State private var edgeGuidesEnabled = false
    @State private var spacingGuidesEnabled = true
    
    var body: some View {
        List {
            SiriSearchAccessNavigationLabel(appName: "Freeform")
            
            Section(content: {
                Toggle("Center Guides", isOn: $centerGuidesEnabled)
                Toggle("Edge Guides", isOn: $edgeGuidesEnabled)
                Toggle("Spacing Guides", isOn: $spacingGuidesEnabled)
            }, header: {
                Text("Alignment Guides")
            })
        }
        .padding([.leading, .trailing], 30)
        .navigationTitle("Freeform")
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Freeform")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    FreeformView()
}
