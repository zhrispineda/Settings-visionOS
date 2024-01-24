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
        List(options, id: \.self) { option in
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
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                Text("Multiplayer Games")
                    .font(.title)
                    .frame(maxWidth: .infinity)
                    .offset(x: -40)
            })
        }
    }
}

#Preview {
    MultiplayerGamesView()
}
