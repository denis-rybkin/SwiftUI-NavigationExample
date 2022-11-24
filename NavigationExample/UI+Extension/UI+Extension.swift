//
//  UI+Extension.swift
//  NavigationExample
//
//  Created by Denis Rybkin on 2022-11-24.
//

import SwiftUI

extension View {
    func debugBorder(_ color: Color = .darkGray) -> some View {
        modifier(DebugBorder(color))
    }
}

struct DebugBorder: ViewModifier {
    
    let color: Color
    
    init(_ color: Color) {
        self.color = color
    }
    
    func body(content: Content) -> some View {
        content
            .border(color)
    }
}
