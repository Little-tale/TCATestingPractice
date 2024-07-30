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
        var textState = ""
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
    /// 만약 12345 라는 문자열이라면 True 라고 해보겠습니다.
    private func textBind(state: inout TestFeature.State, text: String) {
        state.textFieldText = text
        state.textState = text == "12345" ? "성공" : ""
    }
}
