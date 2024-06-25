//
//  AddAccountView.swift
//  Preferences
//
//  Settings > Apps > Calendar > Add Account
//  Settings > People > Add Account
//

import SwiftUI

struct AddAccountView: View {
    // Variables
    let services = ["icloud", "exchange", "gmail", "yahoo-white", "aol-white", "Outlook_Logo"]
    
    var body: some View {
        CustomList(title: "Add Account") {
            ForEach(services, id: \.self) { service in
                HStack {
                    Image(service)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 50)
                        .frame(maxWidth: .infinity)
                }
            }
            // Other: NavigationLink
            ZStack(alignment: .leading) {
                NavigationLink("", destination: AddOtherAccountView()).opacity(0)
                HStack {
                    Spacer()
                    Text("Other")
                        .font(.system(size: 24))
                        .foregroundStyle(.blue)
                    Spacer()
                }
                .padding(.vertical, 10)
            }
        }
    }
}

#Preview {
    AddAccountView()
        .padding()
}
