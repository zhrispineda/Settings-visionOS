//
//  TextReplacementView.swift
//  Settings-visionOS
//
//  Settings > General > Keyboard > Text Replacement
//

import SwiftUI

struct TextReplacementView: View {
    // Variables
    @State private var searchText = String()
    @State var sel: Int = 0
    let characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ#".map(String.init)
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                ForEach(0 ..< characters.count, id: \.self) { character in
                    Text(self.characters[character])
                        .foregroundStyle(.secondary)
                        .font(.system(size: 12))
                }
            }
        }
        .padding(.horizontal, 45)
        .navigationTitle("Text Replacement")
        .searchable(text: $searchText)
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack {
                    Text("Text Replacement")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
            }
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink(destination: AddTextReplacementView()) {
                    Image(systemName: "plus")
                }
            }
            ToolbarItem(placement: .bottomBar) {
                HStack {
                    EditButton()
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        TextReplacementView()
    }
}
