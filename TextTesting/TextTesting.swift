//
//  TextTesting.swift
//  TextTesting
//
//  Created by Jae hyung Kim on 7/30/24.
//

import ComposableArchitecture
import XCTest

@testable import TCATestingPractice

final class TextTesting: XCTestCase {
    @MainActor
    func testingToFeature() async  {
        
        let store = TestStore(initialState: TestFeature.State()) {
            TestFeature()
        }
        
        await store.send(.textFieldText("12345")) {
            print($0)
        }
        
    }
    
}
