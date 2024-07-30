//
//  TestFeature.swift
//  TCATestingPractice
//
//  Created by Jae hyung Kim on 7/30/24.
//

import Foundation
import ComposableArchitecture

@Reducer
struct TestFeature {
    
    @ObservableState
    struct State {
        var textFieldText = ""
        var viewTextState = ViewTextState()
    }
    
    enum Action {
        case textFieldText(String)
    }
    
    struct ViewTextState {
        let placeHolder = "Test TextField"
    }
    
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .textFieldText(let text):
                textBind(state: &state, text: text)
            }
            return .none
        }
    }
}

extension TestFeature {
    private func textBind(state: inout TestFeature.State, text: String) {
        state.textFieldText = text
    }
}
