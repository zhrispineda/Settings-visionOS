//
//  PrivateSearchEngineView.swift
//  Preferences
//
//  Settings > Apps > Safari > Private Search Engine
//

import SwiftUI

struct PrivateSearchEngineView: View {
    // Variables
    @State private var selected = "Use Default Search Engine"
    let options = ["Use Default Search Engine", "Google", "Yahoo", "Bing", "DuckDuckGo", "Ecosia"]
    
    var body: some View {
        CustomList(title: "Private Search Engine") {
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
        PrivateSearchEngineView()
    }
}
