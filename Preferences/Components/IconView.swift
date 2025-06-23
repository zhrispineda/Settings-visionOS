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
    let icon: String
    var color: Color = .clear
    var iconColor: Color = .clear

    var body: some View {
        ZStack {
            // Icon Background
            if (icon == "Placeholder") {
                Image(systemName: "circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
            } else if !icon.contains("com") {
                Image(systemName: "circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                    .foregroundStyle(color.gradient)
            }

            // Check if icon is an SF Symbol or an image asset
            if UIImage(systemName: icon) != nil {
                Image(_internalSystemName: icon)
                    .scaledToFit()
                    .foregroundStyle(iconColor)
            } else if icon.contains("com.apple.graphic") || icon.contains("com.apple.MR") {
                if let ISIcon = UIImage.icon(forUTI: icon) {
                    Image(uiImage: ISIcon)
                }
            } else if icon.contains("com.") {
                let _ = print(icon)
                if let ISIcon = UIImage.icon(forBundleID: icon) {
                    Image(uiImage: ISIcon)
                }
            } else {
                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
            }
        }
    }
}
