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
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Credit Cards")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
            ToolbarItem(placement: .topBarTrailing, content: {
                EditButton()
                    .disabled(true)
            })
        }
    }
}

#Preview {
    SavedCreditCardsView()
}
