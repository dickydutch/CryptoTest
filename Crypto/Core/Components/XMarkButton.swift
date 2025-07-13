//
//  XMarkButton.swift
//  Crypto
//
//  Created by Richard Holland on 26/06/2025.
//

import SwiftUI

struct XMarkButton: View {
    
    let dismiss: DismissAction
    
    var body: some View {
        Button {
            dismiss()
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
        }
        .glassEffect()
    }
}

//#Preview {
//    XMarkButton()
//}
