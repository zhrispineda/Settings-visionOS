//
//  AllowDenyView.swift
//  Preferences
//
//  Template for Allow or Deny lists.
//
//  Parameters:
//  title: String, options: [String]
//

import SwiftUI

struct AllowDenyView: View {
    // Variables
    var title = String()
    @State private var selected = "Allow"
    let options = ["Allow", "Don't Allow"]
    
    var body: some View {
        CustomList(title: title) {
            Section {
                Picker("", selection: $selected) {
                    ForEach(options, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            } footer: {
                if title == "Private Messaging" {
                    Text("Disallowing prevents you from sending custom messages to other players and using voice chat in games.")
                } else if title == "Connect with Friends" {
                    Text("By selecting \u{201C}Allow,\u{201D} apps can for permission to connect you with your Game Center friends.")
                } else if title == "Account Changes" {
                    Text("Disallowing changes prevents adding, removing, or modifying accounts in Passwords & Accounts.")
                }
            }
            
            if title == "Connect with Friends" {
                Section {} footer: {
                    Text("Disallowing prevents apps from asking if they can connect you with your Game Center friends and restricts this device from sharing your Game Center friends list with other apps.")
                }
            }
        }
    }
}

#Preview {
    AllowDenyView()
}
