//
//  LoginView.swift
//  NavigationExample
//
//  Created by Denis Rybkin on 2022-11-24.
//

import SwiftUI

struct LoginView: View {
    
    let output: (LoginEvent) -> Void
    
    @State private var login: String = ""
    @State private var password: String = ""
    @State private var isLoading: Bool = false
    
    var body: some View {
        VStack {
            ZStack {
                Color.clear
                Text("Login")
                    .font(.largeTitle)
            }
            TextFieldCapsule(icon: "person", "Email", text: $login)
            TextFieldCapsule(icon: "lock", "Password", text: $password)
            BlueButton("Login", isLoading: $isLoading) {
                output(.didLoginSuccess)
            }
            Button("Create Account") {
                output(.didTapCreateAccount)
            }
                .padding()
            Color.clear
        }
            .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(output: { _ in })
    }
}
