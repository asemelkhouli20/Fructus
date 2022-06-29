//
//  FructusApp.swift
//  Fructus
//
//  Created by Asem on 20/06/2022.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnBoarding") private var isOnBoarding = true
    var body: some Scene {
        WindowGroup {
            if (isOnBoarding) { OnBoardingView() } else { ContentView() }
        }
    }
}
