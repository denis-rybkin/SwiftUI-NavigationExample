//
//  CreateAccountView.swift
//  NavigationExample
//
//  Created by Denis Rybkin on 2022-11-24.
//

import SwiftUI

struct CreateAccountView: View {
    
    let output: (LoginEvent) -> Void
    
    @State private var login: String = ""
    @State private var password: String = ""
    @State private var repeatPassword: String = ""
    @State private var isLoading: Bool = false
    
    var body: some View {
        VStack {
            Text("Create account")
                .font(.title)
            TextFieldCapsule(icon: "person", "Email", text: $login)
            TextFieldCapsule(icon: "lock", "Password", text: $password)
            TextFieldCapsule(icon: "lock", "Repeat password", text: $repeatPassword)
            BlueButton("Create account", isLoading: $isLoading) {
                output(.didLoginSuccess)
            }
        }
            .padding()
    }
    
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView(output: { _ in })
    }
}
