//
//  BlueButton.swift
//  NavigationExample
//
//  Created by Denis Rybkin on 2022-11-24.
//

import SwiftUI

struct BlueButton: View {
    
    let label: String
    let action: () -> Void
    @Binding var isLoading: Bool
    
    init(_ label: String,
         isLoading: Binding<Bool> = .constant(false),
         action: @escaping () -> Void) {
        self.label = label
        self.action = action
        self._isLoading = isLoading
    }
    
    var body: some View {
        Button(action: action) {
            HStack {
                Spacer()
                    .frame(width: 3)
                Text(label)
                Spacer()
                    .frame(width: 3)
            }
        }
        .buttonStyle(BlueButtonStyle(isLoading: $isLoading))
    }
    
}


struct BlueButtonStyle: ButtonStyle {

    @Binding var isLoading: Bool

    init(isLoading: Binding<Bool> = .constant(false)) {
        self._isLoading = isLoading
    }

    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            configuration.label
                .padding(12)
                .frame(maxWidth: .infinity)
                .foregroundColor(isLoading ? .clear : .white)
                .background(.blue)
                .clipShape(Capsule())
            ProgressView()
                .tint(isLoading ? .white : .clear)
                .scaleEffect(1.5, anchor: .center)
        }
    }

}

struct BlueButton_Previews: PreviewProvider {
    static var previews: some View {
        BlueButton("Title", isLoading: Binding.constant(false)) {
            
        }
    }
}
