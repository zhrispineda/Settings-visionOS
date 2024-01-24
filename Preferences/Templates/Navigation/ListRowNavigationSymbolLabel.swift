//
//  ListRowNavigationSymbolLabel.swift
//  Preferences
//
//  A template to have a NavigationLink with an SF Symbol rounded with a background behind and title.
//
//  Parameters:
//  color: Color, symbol: String, title: String, status: String, content: Content
//

import SwiftUI

struct ListRowNavigationSymbolLabel<Content: View>: View {
    // Variables
    var color: Color = Color.gray
    var symbol: String = String()
    var title: String = String()
    var status: String = String()
    var content: Content
    
    var body: some View {
        NavigationLink(destination: {
            content
        }, label: {
            HStack(spacing: 15) {
                ZStack {
                    color
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())
                    if title == "Audio & Visual" {
                        VStack(spacing: 1) {
                            Image(systemName: "speaker.2.fill")
                                .font(.caption)
                                .fontWeight(.light)
                            Image(systemName: "eye.fill")
                                .font(.caption)
                                .fontWeight(.light)
                        }
                    } else {
                        Image(systemName: symbol)
                            .font(.title3)
                            .fontWeight(.light)
                            .offset(x: symbol == "voiceover" ? 2 : 0)
                    }
                }
                VStack(alignment: .leading) {
                    Text(title)
                }
                Spacer()
                if !status.isEmpty {
                    Text(status).foregroundStyle(.secondary)
                }
            }
        })
    }
}

#Preview {
    List {
        ListRowNavigationSymbolLabel(color: .gray, symbol: "", title: "Audio & Visual", status: "Ok", content: EmptyView())
    }
    .padding()
}
