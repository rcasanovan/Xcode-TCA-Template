//___FILEHEADER___

import ComposableArchitecture
import SwiftUI

struct ___VARIABLE_moduleName___View: View {
    private var store: StoreOf<___VARIABLE_moduleName___>
    
    public init(store: StoreOf<___VARIABLE_moduleName___>) {
        self.store = store
    }
    
    @ViewBuilder
    //__ This content view
    private var content: some View {
        Text(store.title)
    }
    
    //__ This is the body for the view
    var body: some View {
        content
            .onAppear {
                store.send(.onAppear)
        }
    }
}

// MARK: - Factory

extension ___VARIABLE_moduleName___View {
    static func make() -> Self {
        ___VARIABLE_moduleName___View(
            store: .init(
                initialState: ___VARIABLE_moduleName___.State()
            ) {
                ___VARIABLE_moduleName___()
            }
        )
    }
}

#if DEBUG

// MARK: Previews

#Preview {
    let store: StoreOf<___VARIABLE_moduleName___> =  .init(
        initialState: ___VARIABLE_moduleName___.State()
    ) {
        ___VARIABLE_moduleName___()
    }
    return ___VARIABLE_moduleName___View(store: store)
}

#endif
