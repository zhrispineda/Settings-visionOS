//
//  PrivateSearchEngineView.swift
//  Preferences
//
//  Settings > Apps > Safari > Private Search Engine
//

import SwiftUI

struct PrivateSearchEngineView: View {
    // Variables
    @State private var selectedOption: String? = "Use Default Search Engine"

    let options = ["Use Default Search Engine", "Google", "Yahoo", "Bing", "DuckDuckGo", "Ecosia"]
    
    var body: some View {
        List(options, id: \.self) { option in
            Button(action: { selectedOption = option }, label: {
                HStack {
                    Text(option)
                    Spacer()
                    if selectedOption == option { Image(systemName: "checkmark") }
                }
            })
        }
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                Text("")
                    .font(.title)
                    .frame(maxWidth: .infinity)
                    .offset(x: -40)
            })
        }
    }
}

#Preview {
    PrivateSearchEngineView()
}
