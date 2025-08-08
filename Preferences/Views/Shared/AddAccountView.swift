//
//  AddAccountView.swift
//  Preferences
//
//  Settings > Apps > Calendar > Add Account
//  Settings > People > Add Account
//

import SwiftUI

struct AddAccountView: View {
    let accountsPath = "/System/Library/PrivateFrameworks/AccountsUI.framework"
    let services = ["iCloud", "Exchange", "Gmail", "Yahoo", "AOL", "Outlook"]
    
    var body: some View {
        CustomList(title: "Add Account") {
            Section("Choose your provider") {
                ForEach(services, id: \.self) { service in
                    HStack {
                        if let image = UIImage.asset(path: accountsPath, name: service) {
                            Image(uiImage: image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 50)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                }
                // Other: NavigationLink
                Button {} label: {
                    Text("Add Other Account…")
                        .padding(.vertical)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundStyle(.blue)
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        AddAccountView()
    }
}
