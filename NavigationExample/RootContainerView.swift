//
//  RootContainerView.swift
//  NavigationExample
//
//  Created by Denis Rybkin on 2022-11-24.
//

import SwiftUI

struct RootContainerView: View {
    
    enum Root {
        case login
        case tabView
    }
    @State var root: Root = .login
    
    var body: some View {
        switch root {
        case .login:
            LoginNavigationContainer(output: didLogin)
        case .tabView:
            TabViewContainer(output: didLogout)
                .transition(.move(edge: .trailing))
        }
    }
    
    private func didLogin() {
        withAnimation {
            root = .tabView
        }
    }
    
    private func didLogout() {
        withAnimation {
            root = .login
        }
    }
    
}
