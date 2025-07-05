//
//  String.swift
//  Crypto
//
//  Created by Richard Holland on 04/07/2025.
//

import Foundation

extension String {
    var removingHTMLOccurrences: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
