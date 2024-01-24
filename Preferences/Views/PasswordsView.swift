//
//  PasswordsView.swift
//  Settings-visionOS
//
//  Settings > Passwords
//

import SwiftUI

struct PasswordsView: View {
    @State private var searchText = String()
    
    var body: some View {
        List {
            Section {
                NavigationLink(destination: {}, label: {
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                                .foregroundStyle(Color.green)
                                .frame(width: 40, height: 40)
                            Image(systemName: "shield.lefthalf.filled.badge.checkmark")
                                .font(.title)
                                .padding(.horizontal)
                        }
                        VStack(alignment: .leading) {
                            Text("Security Recommendations")
                            Text("Password Options")
                                .foregroundStyle(.secondary)
                        }
                        Spacer()
                        Text("0")
                            .foregroundStyle(.secondary)
                    }
                })
                NavigationLink(destination: {}, label: {
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                                .foregroundStyle(Color.gray)
                                .frame(width: 40, height: 40)
                            Image(systemName: "switch.2")
                                .font(.title)
                                .padding(.horizontal)
                        }
                        VStack(alignment: .leading) {
                            Text("Password Options")
                        }
                    }
                })
            }
        }
        .padding([.leading, .trailing], 45)
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
        .navigationTitle("Passwords")
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                Text("Passwords")
                    .font(.title)
                    .frame(maxWidth: .infinity)
                    .offset(x: 80)
            })
            ToolbarItem(placement: .topBarTrailing, content: {
                Button("\(Image(systemName: "plus"))", action: {})
            })
            ToolbarItem(placement: .topBarTrailing, content: {
                EditButton()
            })
        }
    }
}

#Preview {
    PasswordsView()
}
