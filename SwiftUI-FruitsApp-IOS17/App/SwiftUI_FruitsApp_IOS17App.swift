//
//  SwiftUI_FruitsApp_IOS17App.swift
//  SwiftUI-FruitsApp-IOS17
//
//  Created by Daniel Felipe on 17/02/24.
//

import SwiftUI

@main
struct SwiftUI_FruitsApp_IOS17App: App {
    @AppStorage("isOnboarding") var isOnbarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnbarding {
                OnboardingView()
            }else {
                FruitListView()
            }
        }
    }
}
