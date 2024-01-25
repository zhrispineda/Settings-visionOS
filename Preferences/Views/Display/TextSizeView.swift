//
//  TextSizeView.swift
//  Preferences
//
//  Settings > Display > Text Size
//

import SwiftUI

struct TextSizeView: View {
    // Variables
    @State private var speakingRate = 3.0
    
    var body: some View {
        VStack {
            ZStack {
                Slider(value: $speakingRate,
                       in: 0.0...6.0,
                       step: 1.0,
                       minimumValueLabel: Image(systemName: "textformat.size.smaller"),
                       maximumValueLabel: Image(systemName: "textformat.size.larger"),
                       label: { Text("Speaking Rate") }
                )
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.black)
                        .opacity(0.2)
                        .frame(height: 100)
                )
                .padding(.horizontal, 75)
            }
            .padding()
            Text("Apps that support Dynamic Type will adjust to your\npreferred reading size above.")
                .multilineTextAlignment(.center)
                .padding(.top, 5)
        }
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                Text("Text Size")
                    .font(.title2)
                    .frame(maxWidth: .infinity)
                    .offset(x: -40)
            })
        }
    }
}

#Preview {
    TextSizeView()
}
