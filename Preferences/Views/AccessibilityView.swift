//
//  AccessibilityView.swift
//  Settings-visionOS
//
//  Settings > Accessibility
//

import SwiftUI

struct AccessibilityView: View {
    var body: some View {
        CustomList(title: "Accessibility") {
            Section(content: {
                
            }, header: {
                Text("Vision")
            })
            
            Section(content: {
                
            }, header: {
                Text("Physical and Motor")
            })
            
            Section(content: {
                
            }, header: {
                Text("Hearing")
            })
            
            Section(content: {
                
            }, header: {
                Text("General")
            })
        }
    }
}

#Preview {
    AccessibilityView()
}
