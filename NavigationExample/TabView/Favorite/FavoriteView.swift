//
//  FavoriteView.swift
//  NavigationExample
//
//  Created by Denis Rybkin on 2022-11-24.
//

import SwiftUI

struct FavoriteView: View {
    
    let output: (OutputEvent) -> Void
    
    private let images = ["picture2"]
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

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView(output: { _ in })
    }
}
