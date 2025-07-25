//
//  CircleButtonView.swift
//  Crypto
//
//  Created by Richard Holland on 22/06/2025.
//

import SwiftUI

struct CircleButtonView: View {
    
    let iconName: String
    
    var body: some View {
        Image(systemName: iconName)
            .contentTransition(.symbolEffect(.replace))
            .font(.headline)
            .foregroundStyle(Color.theme.accent)
            .frame(width: 50, height: 50)
            .glassEffect(.regular.interactive(), in: .buttonBorder)

//            .background(
//                Circle()
//                    .foregroundStyle(Color.theme.background)
//                )
//                    .shadow(color: Color.theme.accent.opacity(0.25),
//                            radius: 10, x: 0, y: 0)
                    .padding()

    }
}

struct CircleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CircleButtonView(iconName: "info")
                .previewLayout(.sizeThatFits)
            CircleButtonView(iconName: "info")
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}
