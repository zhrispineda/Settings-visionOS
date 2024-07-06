//
//  CameraView.swift
//  Preferences
//
//  Settings > Apps > Safari > Camera
//

import SwiftUI

struct CameraView: View {
    // Variables
    @State private var selected = "Ask"

    let options = ["Ask", "Deny", "Allow"]
    
    var body: some View {
        List {
            Section("Camera Access On All Websites") {
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
                Text("Camera")
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
        CameraView()
    }
}
