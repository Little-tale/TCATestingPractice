//
//  TCATestingPracticeApp.swift
//  TCATestingPractice
//
//  Created by Jae hyung Kim on 7/30/24.
//

import SwiftUI
import ComposableArchitecture

@main
struct TCATestingPracticeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(store: Store(initialState: TestFeature.State()){
                TestFeature()
            })
        }
    }
}
