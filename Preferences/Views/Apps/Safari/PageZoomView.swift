//
//  PageZoomView.swift
//  Preferences
//
//  Settings > Apps > Safari > Page Zoom
//

import SwiftUI

struct PageZoomView: View {
    // Variables
    @State private var selected = "100%"
    let options = ["50%", "75%", "100%", "115%", "125%", "150%", "175%", "200%", "250%", "300%"]
    
    var body: some View {
        List {
            Section("Page Zoom On All Websites") {
                Picker("", selection: $selected) {
                    ForEach(options, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            }
        }
        .padding(.horizontal, 45)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Page Zoom")
                    .font(.title)
                    .frame(maxWidth: .infinity)
            }
            ToolbarItem(placement: .topBarTrailing) {
                EditButton()
                    .disabled(true)
            }
        }
    }
}

#Preview {
    NavigationStack {
        PageZoomView()
    }
}
