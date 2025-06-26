//
//  Color.swift
//  Crypto
//
//  Created by Richard Holland on 22/06/2025.
//

import Foundation
import SwiftUI

extension Color {
    
    static let theme = ColorTheme()

}

struct ColorTheme {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenUIColor")
    let red = Color("RedUIColor")
    let secondaryText = Color("SecondaryTextColor")
}
