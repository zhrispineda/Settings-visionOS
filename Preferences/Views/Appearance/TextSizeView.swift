//
//  TextSizeView.swift
//  Preferences
//
//  Settings > Display > Text Size
//

import SwiftUI

struct TextSizeView: View {
    // Variables
    @State private var textSize = 3.0
    @Binding var largerAccessibilitySizes: Bool
    
    var body: some View {
        VStack {
            ZStack {
                Slider(value: $textSize,
                       in: 0.0...(largerAccessibilitySizes ? 11.0 : 6.0),
                       step: 1.0,
                       minimumValueLabel: Image(systemName: "textformat.size.smaller"),
                       maximumValueLabel: Image(systemName: "textformat.size.larger"),
                       label: { Text("Text Size") }
                )
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(.black)
                        .opacity(0.2)
                        .frame(height: 100)
                )
                .padding(.horizontal, 75)
            }
            .padding()
            Text("Apps that support Dynamic Type will adjust to your\npreferred reading size above.")
                .opacity(0.6)
                .multilineTextAlignment(.center)
                .padding(.top, 5)
            Spacer()
        }
        .toolbar {
            ToolbarItem(placement: .secondaryAction) {
                Text("Text Size")
                    .font(.title2)
                    .frame(maxWidth: .infinity)
                    .offset(x: -40)
            }
        }
    }
}

#Preview {
    TextSizeView(largerAccessibilitySizes: .constant(true))
}
