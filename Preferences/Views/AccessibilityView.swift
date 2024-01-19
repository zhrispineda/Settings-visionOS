//
//  AccessibilityView.swift
//  Settings-visionOS
//
//  Settings > Accessibility
//

import SwiftUI

struct AccessibilityView: View {
    var body: some View {
        List {
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
        .padding([.leading, .trailing], 30)
        .navigationTitle("Accessibility")
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Accessibility")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
            })
        }
    }
}

#Preview {
    AccessibilityView()
}
