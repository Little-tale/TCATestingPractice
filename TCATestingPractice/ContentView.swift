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
                Text(store.textState)
                TextField(
                    store.viewTextState.placeHolder,
                    text: $store.textFieldText.sending(\.textFieldText)
                )
                .padding(.leading, 10)
                .frame(maxWidth: .infinity)
                .textFieldStyle(RoundedBorderTextFieldStyle())

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
