//
//  OutputEvent.swift
//  NavigationExample
//
//  Created by Denis Rybkin on 2022-11-24.
//

import Foundation

enum OutputEvent: Hashable {
    case didTapDetails(String)
    case didTapSettings
    case didTapLogout
}
