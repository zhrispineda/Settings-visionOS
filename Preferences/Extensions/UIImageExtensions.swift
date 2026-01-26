//
//  UIImageExtensions.swift
//  Preferences
//

import SwiftUI

extension UIImage {
    /// Returns a UIImage icon given a Uniform Type Identifier.
    /// 
    /// - Parameter uti: The string Uniform Type Identifier to use.
    ///
    /// - Returns: UIImage of an icon or a fallback blank page icon.
    ///
    /// - Warning: Do not use this method for public applications. It is not publicly supported.
    static func icon(for uti: String) -> UIImage? {
        return iconFromPreferencesFramework(selectorName: "ps_synchronousIconWithTypeIdentifier:", argument: uti)
    }
    
    /// Returns a UIImage icon given a bundle identifier.
    ///
    /// - Parameter id: The string bundle identifier to use.
    ///
    /// - Returns: UIImage of an icon or a fallback template icon.
    ///
    /// - Warning: Do not use this method for public applications. It is not publicly supported.
    static func icon(forBundle id: String) -> UIImage? {
        return iconFromPreferencesFramework(selectorName: "ps_synchronousIconWithApplicationBundleIdentifier:", argument: id)
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
    
    @MainActor static func asset(path: String, name: String) -> UIImage? {
        var newPath = ""
        
        if UIDevice.IsSimulated {
            guard let newBuild = MGHelper.read(key: "mZfUC7qo4pURNhyMHZ62RQ") else {
                return nil
            }
            newPath = "/Library/Developer/CoreSimulator/Volumes/xrOS_\(newBuild)/Library/Developer/CoreSimulator/Profiles/Runtimes/xrOS \(UIDevice.current.systemVersion).simruntime/Contents/Resources/RuntimeRoot\(path)"
        } else {
            newPath = path
        }
        
        if let bundle = Bundle(path: newPath) {
            print(newPath)
            let image = UIImage(named: name, in: bundle, compatibleWith: nil)
            return image
        }
        
        return nil
    }
}

extension UIDevice {
    /// Returns a Bool on whether the host is on a simulator/Mac.
    static let IsSimulated: Bool = {
        if let answer = MGHelper.read(key: "ulMliLomP737aAOJ/w/evA") { // IsSimulator key
            return Bool(answer)!
        }
        
        // Fallback
        return ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] != nil
    }()
}
