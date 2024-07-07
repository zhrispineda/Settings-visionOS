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
            Section {
                Picker("", selection: $selected) {
                    ForEach(options, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            } footer: {
                Text("Choose a recipe that will be applied automatically when Switch Control starts.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        LaunchRecipeView()
    }
}
