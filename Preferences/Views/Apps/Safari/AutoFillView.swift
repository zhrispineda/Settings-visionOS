//
//  AutoFillView.swift
//  Preferences
//
//  Settings > Apps > Safari > AutoFill
//

import SwiftUI

struct AutoFillView: View {
    // Variables
    @State private var useContactInfoEnabled = false
    @State private var creditCardsEnabled = true
    
    var body: some View {
        CustomList(title: "AutoFill") {
            Section {} footer: {
                Text("Automatically fill out web forms using your contact or credit card info.")
            }
            
            Section {
                Toggle("Use Contact Info", isOn: $useContactInfoEnabled)
                Button {} label: {
                    NavigationLink(destination: EmptyView()) {
                        LabeledContent("My Info", value: "None")
                    }
                }
            }
            
            Section {
                Toggle("Credit Cards", isOn: $creditCardsEnabled)
                NavigationLink("Saved Credit Cards", destination: SavedCreditCardsView())
            }
        }
    }
}

#Preview {
    NavigationStack {
        AutoFillView()
    }
}
