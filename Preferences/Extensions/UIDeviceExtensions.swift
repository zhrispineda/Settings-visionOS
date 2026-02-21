//
//  UIDeviceExtensions.swift
//  Preferences
//

import SwiftUI

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
