//
//  XMarkButton.swift
//  Crypto
//
//  Created by Richard Holland on 26/06/2025.
//

import SwiftUI

struct XMarkButton: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "xmark")
                .font(.headline)
        })    }
}

#Preview {
    XMarkButton()
}
