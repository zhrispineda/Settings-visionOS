//
//  BannerStyleView.swift
//  Preferences
//
//  Settings > Notifications > [App] > Banner Style
//

import SwiftUI

struct BannerStyleView: View {
    // Variables
    @State private var selected = "Temporary"
    let options = ["Temporary", "Persistent"]
    
    var body: some View {
        CustomList(title: "Banner Style") {
            Picker("", selection: $selected) {
                ForEach(options, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.inline)
            .labelsHidden()
        }
    }
}

#Preview {
    NavigationStack {
        BannerStyleView()
    }
}
