/*
Abstract:
A ZStack structure for creating an icon view; building the background, icon, and overlay.
*/

import SwiftUI

/// A ZStack structure for creating an icon view; building the background, icon, and overlay.
///
/// ```swift
/// IconView(icon: "wifi", color: Color.blue, iconColor: Color.white)
/// ```
///
/// - Parameter icon: The `String` name of the image asset or symbol.
/// - Parameter color: The `Color` of the background.
/// - Parameter iconColor: The `Color` of the icon itself.
struct IconView: View {
    @Environment(\.colorScheme) private var colorScheme
    let id: String
    let icon: String
    let color: Color
    let iconColor: Color
    let circular: Bool = true

    var body: some View {
        ZStack {
            // Icon Background
            if (icon == "Placeholder") {
                Image(systemName: "circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
            } else {
                Image(systemName: "circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                    .foregroundStyle(color.gradient)
            }

            // Check if icon is an SF Symbol or an image asset
            if UIImage(systemName: icon) != nil || icon == "key.dots.fill" {
                Image(_internalSystemName: icon)
                    .scaledToFit()
                    .foregroundStyle(iconColor)
            } else if icon.contains("custom") {
                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20)
                    .foregroundStyle(.gray, .white)
            } else {
                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            }
        }
        .overlay {
            // Add outline around icon background
            if color == .white || color == .black {
                RoundedRectangle(cornerRadius: 7)
                    .stroke(color == .white ? Color.black.opacity(0.5) : colorScheme == .dark ? Color.white.opacity(0.5) : Color.black.opacity(0.5), lineWidth: 0.25)
            }
        }
    }
}
