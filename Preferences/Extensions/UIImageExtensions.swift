//
//  UIImageExtensions.swift
//  Preferences
//

import SwiftUI

extension UIImage {
    static func icon(forUTI uti: String) -> UIImage? {
        return iconFromPreferencesFramework(selectorName: "ps_synchronousIconWithTypeIdentifier:", argument: uti)
    }

    static func icon(forBundleID bundleID: String) -> UIImage? {
        return iconFromPreferencesFramework(selectorName: "ps_synchronousIconWithApplicationBundleIdentifier:", argument: bundleID)
    }

    private static func iconFromPreferencesFramework(selectorName: String, argument: String) -> UIImage? {
        let path = "/System/Library/PrivateFrameworks/Preferences.framework/Preferences"
        if dlopen(path, RTLD_NOLOAD) == nil {
            dlopen(path, RTLD_NOW)
        }

        let selector = NSSelectorFromString(selectorName)
        guard UIImage.responds(to: selector) else { return nil }

        let image = UIImage.perform(selector, with: argument)
        return image?.takeUnretainedValue() as? UIImage
    }
}
