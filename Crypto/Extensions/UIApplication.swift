//
//  UIApplication.swift
//  Crypto
//
//  Created by Richard Holland on 25/06/2025.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}


