//
//  ContentView.swift
//  Crypto
//
//  Created by Richard Holland on 22/06/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Sample Text")
                .padding()
                .glassEffect(.regular.interactive(), in: .capsule)
            Spacer()
            TabView {
                Tab("Tab 1", systemImage: "1.circle") {
                    List(0..<100) { i in
                        Text("Row \(i)")
                    }
                }

                Tab("Tab 2", systemImage: "2.circle") {
                    Text("Tab 2")
                }
            }
            .tabViewBottomAccessory {
                Text("Hello, world!")
            }
            .tabBarMinimizeBehavior(.onScrollDown)
        }
        .padding()
        .background(Color.blue)
    }
}

#Preview {
    ContentView()
}
