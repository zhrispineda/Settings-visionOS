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
    var subtitle: String = String()
    var status: String = String()
    var content: Content
    
    var body: some View {
        NavigationLink {
            content
        } label: {
            HStack(spacing: 15) {
                ZStack {
                    Circle()
                        .foregroundStyle(color.gradient)
                        .frame(width: 32, height: 32)
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
                        if symbol == "health.3.stack.3d.fill" {
                            Image(_internalSystemName: symbol)
                                .font(.title3)
                                .offset(y: -2)
                        } else {
                            Image(_internalSystemName: symbol)
                                .font(.title3)
                                .offset(x: symbol == "voiceover" ? 2 : 0)
                                .imageScale(symbol == "keyboard.badge.waveform.fill" ? .small : .medium)
                        }
                    }
                }
                
                VStack(alignment: .leading) {
                    Text(title)
                    if !subtitle.isEmpty {
                        Text(subtitle)
                            .foregroundStyle(.secondary)
                            .font(.caption)
                    }
                }
                
                Spacer()
                
                if !status.isEmpty {
                    Text(status).foregroundStyle(.secondary)
                }
            }
        }
    }
}

#Preview {
    List {
        ListRowNavigationSymbolLabel(color: .gray, symbol: "", title: "Audio & Visual", status: "Ok", content: EmptyView())
    }
    .padding()
}
