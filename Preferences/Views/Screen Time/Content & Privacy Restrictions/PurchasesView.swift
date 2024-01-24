//
//  PurchasesView.swift
//  Preferences
//
//  Settings > Screen Time > Content & Privacy Restrictions
//

import SwiftUI

struct PurchasesView: View {
    // Variables
    @State private var selectedOption: String? = "Don't Require"
    let options = ["Always Require", "Don't Require"]
    
    var body: some View {
        List {
            Section(content: {
                ListRowNavigationLabel(title: "Installing Apps", subtitle: "Allow", content: AllowDenyView(title: "Installing Apps"))
                ListRowNavigationLabel(title: "Deleting Apps", subtitle: "Allow", content: AllowDenyView(title: "Deleting Apps"))
                ListRowNavigationLabel(title: "In-app Purchases", subtitle: "Allow", content: AllowDenyView(title: "In-app Purchases"))
            }, header: {
                Text("Store Purchases & Redownloads")
            })
            
            Section(content: {
                ForEach(options, id: \.self) { option in
                    Button(action: { selectedOption = option }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            if selectedOption == option {
                                Image(systemName: "checkmark")
                            }
                        }
                    })
                }
            }, header: {
                Text("Require Password")
            }, footer: {
                Text("Require a password for additional purchases after making a purchase from the iTunes, Book, or App Store.")
            })
        }
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("iTunes & App Store Purchases")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    PurchasesView()
}
