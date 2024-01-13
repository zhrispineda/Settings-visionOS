//
//  ScreenTimeView.swift
//  Settings-visionOS
//
//  Settings > Screen Time
//

import SwiftUI

struct ScreenTimeView: View {
    var body: some View {
        List {
            
        }
        .padding([.leading, .trailing], 25)
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
    ScreenTimeView()
}
