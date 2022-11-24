//
//  SettingsView.swift
//  NavigationExample
//
//  Created by Denis Rybkin on 2022-11-24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        Image(systemName: "gear")
            .resizable()
            .foregroundColor(.white)
            .frame(width: 150, height: 150)
            .padding()
            .background(.blue.opacity(0.3))
            .cornerRadius(15)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
