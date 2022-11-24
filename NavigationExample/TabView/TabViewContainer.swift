//
//  TabViewContainer.swift
//  NavigationExample
//
//  Created by Denis Rybkin on 2022-11-24.
//

import SwiftUI

struct TabViewContainer: View {
    
    @State var stack: [OutputEvent] = []
    
    var body: some View {
        NavigationStack(path: $stack) {
            TabView {
                HomeView { event in
                    stack.append(event)
                }
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                FavoriteView { event in
                    stack.append(event)
                }
                    .tabItem {
                        Label("Favorite", systemImage: "heart")
                    }
                ProfileView { event in
                    stack.append(event)
                }
                    .tabItem {
                        Label("Profile", systemImage: "person")
                    }
            }
                .navigationDestination(for: OutputEvent.self) { event in
                    switch event {
                    case .didTapDetails(let details):
                        DetailsView(details: details)
                    case .didTapSettings:
                        SettingsView()
                    }
                }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewContainer()
    }
}

struct TabViewContainer_Previews: PreviewProvider {
    static var previews: some View {
        TabViewContainer()
    }
}
