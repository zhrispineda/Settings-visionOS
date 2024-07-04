//
//  CleanExplicitView.swift
//  Preferences
//
//  Settings > Screen Time > Content & Privacy Restrictions > Content Restrictions > Music, Podcasts, News, Fitness
//
// Settings > Screen Time > Content & Privacy Restrictions > Content Restrictions > Books
//
//  Parameters:
//  title: String
//

import SwiftUI

struct CleanExplicitView: View {
    // Variables
    var title = String()
    @State private var selected = "Explicit"
    let options = ["Clean", "Explicit"]
    
    var body: some View {
        CustomList(title: title) {
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
        CleanExplicitView()
    }
}
