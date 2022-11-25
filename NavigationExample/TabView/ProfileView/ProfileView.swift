//
//  ProfileView.swift
//  NavigationExample
//
//  Created by Denis Rybkin on 2022-11-24.
//

import SwiftUI

struct ProfileView: View {
    
    let output: (OutputEvent) -> Void
    
    var body: some View {
        VStack {
            Image(systemName: "person.circle")
                .resizable()
                .foregroundColor(.white)
                .frame(width: 150, height: 150)
            Spacer()
                .frame(height: 20)
            Button("Settings") {
                output(.didTapSettings)
            }
            Spacer()
                .frame(height: 15)
            Button("Logout") {
                output(.didTapLogout)
            }
        }
            .padding()
            .background(.blue.opacity(0.3))
            .cornerRadius(15)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(output: { _ in })
    }
}
