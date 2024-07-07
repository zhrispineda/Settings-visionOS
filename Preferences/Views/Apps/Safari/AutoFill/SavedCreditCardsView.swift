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
            Button("Add Credit Card") {}
        }
        .padding(.horizontal, 45)
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack {
                    Text("Credit Cards")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
            }
            ToolbarItem(placement: .topBarTrailing) {
                EditButton()
                    .disabled(true)
            }
        }
    }
}

#Preview {
    NavigationStack {
        SavedCreditCardsView()
    }
}
