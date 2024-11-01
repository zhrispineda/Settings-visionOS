//
//  SystemFontsView.swift
//  Preferences
//
//  Settings > General > Fonts > System Fonts
//

import SwiftUI

struct SystemFontsView: View {
    // Variables
    @State private var searchText = String()
    
    var body: some View {
        CustomList(title: "System Fonts") {
            Section("Installed Fonts") {
                ForEach(UIFont.familyNames, id: \.self) {
                    NavigationLink($0) {}
                }
            }
        }
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
        .toolbar {
            EditButton()
                .disabled(true)
        }
    }
}

#Preview {
    NavigationStack {
        SystemFontsView()
    }
}
