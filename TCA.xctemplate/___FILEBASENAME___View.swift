//___FILEHEADER___

import ComposableArchitecture
import SwiftUI

struct ___VARIABLE_moduleName___View: View {
    private var store: Store<___VARIABLE_moduleName___.State, ___VARIABLE_moduleName___.Action>
    
    public init(store: Store<___VARIABLE_moduleName___.State, ___VARIABLE_moduleName___.Action>) {
        self.store = store
    }
    
    @ViewBuilder
    //__ This class extends UIViewController. Feel free to modify it if needed
    private var content: some View {
        WithViewStore(store, observe: { $0 }) { viewStore in
            Text(viewStore.title)
        }
    }
    
    //__ This class extends UIViewController. Feel free to modify it if needed
    var body: some View {
        WithViewStore(store, observe: { $0 }) { viewStore in
            content
                .onAppear {
                    store.send(.onAppear)
                }
        }
    }
}

#Preview {
    let store: Store<___VARIABLE_moduleName___.State, ___VARIABLE_moduleName___.Action> =  .init(
        initialState: ___VARIABLE_moduleName___.State()
    ) {
        ___VARIABLE_moduleName___()
    }
    return ___VARIABLE_moduleName___View(store: store)
}
