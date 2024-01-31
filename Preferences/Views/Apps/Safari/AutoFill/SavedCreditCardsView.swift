//
//  SavedCreditCardsView.swift
//  Preferences
//
//  Settings > Apps > Safari > AutoFill > Saved Credit Cards
//

import SwiftUI

struct SavedCreditCardsView: View {
    var body: some View {
        List {
            // TODO: Popover view
            Button("Add Credit Card", action: {})
        }
        .padding(.horizontal, 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Credit Cards")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
            })
            ToolbarItem(placement: .topBarTrailing, content: {
                EditButton()
                    .disabled(true)
            })
        }
    }
}

#Preview {
    NavigationStack {
        SavedCreditCardsView()
    }
}
