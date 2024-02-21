//
//  FrutitasApp.swift
//  Frutitas
//
//  Created by Aneudys Amparo on 14/2/24.
//

import SwiftUI

@main
struct FrutitasApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
