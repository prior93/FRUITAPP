//
//  FrootiApp.swift
//  Frooti
//
//  Created by parashar.r.adhikary on 22/04/2021.
//

import SwiftUI

@main
struct FrootiApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
              OnboardingView()
            }else{
                ContentView()
            }
            
        }
    }
}
