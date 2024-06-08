//___FILEHEADER___

import ComposableArchitecture
import Foundation

public struct ___VARIABLE_moduleName___: Reducer {
    public struct State: Equatable {
        public var title = ""
    }

    public enum Action: Equatable {
        case didReceiveTitle(String)
        case onAppear
    }

    public var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
            case .didReceiveTitle(let title):
                state.title = title
                return .none
            case .onAppear:
                return self.loadEffect()
            }
        }
    }
}

extension ___VARIABLE_moduleName___ {
    fileprivate func loadEffect() -> Effect<___VARIABLE_moduleName___.Action> {
        return .run { send in
            return await send(.didReceiveTitle("test title"))
        }
    }
}
