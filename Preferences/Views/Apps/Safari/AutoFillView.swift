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
        List {
            Section(content: {}, footer: {
                Text("Automatically fill out web forms using your contact or credit card info.")
            })
            
            Section {
                Toggle("Use Contact Info", isOn: $useContactInfoEnabled)
                // TODO: Contacts sheet popup for button
                Button(action: {}, label: {
                    HStack {
                        Text("My Info")
                        Spacer()
                        Text("None")
                            .foregroundStyle(.secondary)
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.secondary)
                    }
                })
            }
            
            Section {
                Toggle("Credit Cards", isOn: $creditCardsEnabled)
                // TODO: Add authentication to view SavedCreditCardsView
                NavigationLink("Saved Credit Cards", destination: SavedCreditCardsView())
            }
        }
        .padding([.leading, .trailing], 40)
        .navigationTitle("AutoFill")
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("AutoFill")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    AutoFillView()
}
