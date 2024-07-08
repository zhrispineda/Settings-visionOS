//
//  SearchEngineView.swift
//  Settings-visionOS
//
//  Settings > Apps > Safari > Search Engine
//

import SwiftUI

struct SearchEngineView: View {
    // Variables
    @State private var selected = "Google"
    let options = ["Google", "Yahoo", "Bing", "DuckDuckGo", "Ecosia"]
    
    var body: some View {
        CustomList(title: "Search Engine") {
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
        SearchEngineView()
    }
}
