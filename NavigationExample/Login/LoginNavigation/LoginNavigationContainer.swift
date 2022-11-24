//
//  LoginNavigationContainer.swift
//  NavigationExample
//
//  Created by Denis Rybkin on 2022-11-24.
//

import SwiftUI

struct LoginNavigationContainer: View {
    
    @State var stack: [LoginEvent] = []
    
    let output: () -> Void
    
    var body: some View {
        NavigationStack(path: $stack) {
            LoginView { output in
                self.screenOutput(output)
            }
                .navigationDestination(for: LoginEvent.self) { event in
                    switch event {
                    case .didLoginSuccess:
                        outputLoginFlow()
                    case .didTapCreateAccount:
                        CreateAccountView { output in
                            self.screenOutput(output)
                        }
                    }
                }
        }
    }
    
    private func outputLoginFlow() -> some View {
        self.output()
        return EmptyView()
    }
    
    private func screenOutput(_ output: LoginEvent) {
        if output == .didLoginSuccess {
            self.output()
        } else {
            stack.append(output)
        }
    }
    
}
