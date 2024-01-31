//
//  MultiplayerGamesView.swift
//  Preferences
//
//  Settings > Screen Time > Content & Privacy Restrictions > Content Restrictions > Multiplayer Games
//

import SwiftUI

struct MultiplayerGamesView: View {
    // Variables
    @State private var selectedOption = "Allow with Everyone"
    let options = ["Don't Allow", "Allow with Friends Only", "Allow with Everyone"]
    
    var body: some View {
        CustomList(title: "Multiplayer Games") {
            ForEach(options, id: \.self) { option in
                Button(action: { selectedOption = option }, label: {
                    HStack {
                        Text(option)
                        Spacer()
                        if selectedOption == option {
                            Image(systemName: "checkmark")
                        }
                    }
                })
            }
        }
    }
}

#Preview {
    MultiplayerGamesView()
}
