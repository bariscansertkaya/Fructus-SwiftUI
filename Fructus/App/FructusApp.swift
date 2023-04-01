//
//  FructusApp.swift
//  Fructus
//
//  Created by Barış Can Sertkaya on 27.03.2023.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                if isOnboarding {
                    OnboardingView()
                }
                else {
                    ContentView()
                }
            }
            .animation(.easeOut(duration: 0.5), value: !isOnboarding)
            
        }
    }
}
