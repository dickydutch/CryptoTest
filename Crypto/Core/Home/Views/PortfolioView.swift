//
//  PortfolioView.swift
//  Crypto
//
//  Created by Richard Holland on 26/06/2025.
//

import SwiftUI

struct PortfolioView: View {
        
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    Text("Hi!")
                }
            }
            .navigationTitle("Edit Portfolio")
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    XMarkButton()
                }
            })
        }
    }
}

#Preview {
    PortfolioView()
}
