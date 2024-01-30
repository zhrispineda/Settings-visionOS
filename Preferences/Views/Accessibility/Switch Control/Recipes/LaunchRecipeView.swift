//
//  LaunchRecipeView.swift
//  Preferences
//
//  Settings > Accessibility > Switch Control > Recipes > Launch Recipe
//

import SwiftUI

struct LaunchRecipeView: View {
    // Variables
    @State private var selected = "None"
    let options = ["None", "Tap Middle of Screen", "Turn Pages"]
    
    var body: some View {
        CustomList(title: "Launch Recipe") {
            Section(content: {
                ForEach(options, id: \.self) { option in
                    Button(action: {
                        selected = option
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selected == option ? "checkmark" : "")")
                        }
                    })
                }
            }, footer: {
                Text("Choose a recipe that will be applied automatically when Switch Control starts.")
            })
        }
    }
}

#Preview {
    LaunchRecipeView()
}
