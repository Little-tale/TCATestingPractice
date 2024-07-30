//
//  ContentView.swift
//  TCATestingPractice
//
//  Created by Jae hyung Kim on 7/30/24.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {
    
    @Perception.Bindable var store: StoreOf<TestFeature>
    
    var body: some View {
        WithPerceptionTracking {
            VStack {
                TextField(
                    store.viewTextState.placeHolder,
                    text: $store.textFieldText.sending(\.textFieldText)
                )
            }
            .padding()
        }
    }
}

#if DEBUG
#Preview {
    ContentView(store: Store(initialState: TestFeature.State(), reducer: {
        TestFeature()
    }))
}
#endif
