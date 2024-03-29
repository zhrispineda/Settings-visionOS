//
//  SearchEngineView.swift
//  Settings-visionOS
//
//  Settings > Apps > Safari > Search Engine
//

import SwiftUI

struct SearchEngineView: View {
    // Variables
    @State private var selectedOption: String? = "Google"

    let options = ["Google", "Yahoo", "Bing", "DuckDuckGo", "Ecosia"]
    
    var body: some View {
        CustomList(title: "Search Engine") {
            ForEach(options, id: \.self) { option in
                Button(action: { selectedOption = option }, label: {
                    HStack {
                        Text(option)
                        Spacer()
                        if selectedOption == option { Image(systemName: "checkmark") }
                    }
                })
            }
        }
    }
}

#Preview {
    SearchEngineView()
}
