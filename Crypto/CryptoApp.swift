//
//  CryptoApp.swift
//  Crypto
//
//  Created by Richard Holland on 22/06/2025.
//

import SwiftUI

@main
struct CryptoApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
                 
            }
            .environmentObject(vm)
        }
    }
}
