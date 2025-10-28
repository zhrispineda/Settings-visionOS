import SwiftUI

/// An icon view that loads a symbol, UTI or bundle asset.
///
/// ```swift
/// IconView(icon: "com.apple.graphic-icon.gear")
/// ```
///
/// - Parameter icon: The `String` name of the asset or symbol.
struct IconView: View {
    let icon: String

    var body: some View {
        // Check if icon is an SF Symbol or an image asset
        if UIImage(systemName: icon) != nil {
            Image(_internalSystemName: icon)
                .scaledToFit()
        } else if icon.contains("com.apple.graphic") || icon.contains("com.apple.MR") || icon.contains("icloud") || icon.contains("com.apple.app") {
            if let ISIcon = UIImage.icon(forUTI: icon) {
                Image(uiImage: ISIcon)
            }
        } else if icon.contains("com.") {
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

#Preview {
    ContentView()
}
