//
//  HomeView.swift
//  NavigationExample
//
//  Created by Denis Rybkin on 2022-11-24.
//

import SwiftUI

struct HomeView: View {
    
    let output: (OutputEvent) -> Void
    
    private let images = ["picture1", "picture2", "picture3", "picture4", "picture5"]
    private let inset: CGFloat = 15
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(images, id: \.self) { image in
                    ZStack {
                        Image(image)
                            .resizable()
                            .scaledToFill()
                            .frame(height: 150)
                            .clipped()
                            .cornerRadius(8)
                        HStack {
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.white)
                                .padding()
                        }
                    }
                    .padding([.leading, .trailing], inset)
                    .padding([.top, .bottom], inset / 2)
                    .contentShape(Rectangle())
                    .onTapGesture {
                        output(.didTapDetails(image))
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(output: { _ in })
    }
}
