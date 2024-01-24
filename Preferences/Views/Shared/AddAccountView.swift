//
//  AddAccountView.swift
//  Preferences
//
//  Settings > Apps > Calendar > Add Account
//  Settings > People > Add Account
//

import SwiftUI

struct AddAccountView: View {
    var body: some View {
        CustomList(title: "Add Account") {
            // TODO: Get transparent images for each service.
            ListRowAccountLabel(service: "iCloud") // Popover for Apple ID
            ListRowAccountLabel(service: "Microsoft Exchange") // Popover for Exchange
            ListRowAccountLabel(service: "Google") // Safari View Controller
            ListRowAccountLabel(service: "Yahoo") // Safari View Controller
            ListRowAccountLabel(service: "AOL") // Safari View Controller
            ListRowAccountLabel(service: "Outlook")  // Safari View Controller
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
