//
//  RecipesView.swift
//  Preferences
//
//  Settings > Accessibility > Switch Control > Recipes
//

import SwiftUI

struct RecipesView: View {
    // Variables
    @State private var options = ["Tap Middle of Screen", "Turn Pages"]
    
    var body: some View {
        CustomList(title: "Recipes", editEnabled: true) {
            Section {
                ForEach($options, id: \.self, editActions: [.delete, .move]) { $recipe in
                    ZStack(alignment: .leading) {
                        NavigationLink("", destination: NewRecipeView(editEnabled: true, name: recipe))
                        .opacity(0)
                        Text(recipe)
                    }
                }
                NavigationLink("Create New Recipe", destination: NewRecipeView(editEnabled: false, timeoutEnabled: false))
            } header: {
                Text("Recipes")
            } footer: {
                Text("A recipe is a set of specialized actions you can temporarily assign to switches in place of their normal actions. Recipes can perform frequently repeated or complex actions within apps, like turning pages in the Books app, or triggering controls in games. You can even record a series of gestures as part of a recipe.")
            }
            
            Section {
                ListRowNavigationLabel(title: "Launch Recipe", subtitle: "None", content: LaunchRecipeView())
            }
        }
    }
}

#Preview {
    NavigationStack {
        RecipesView()
    }
}
