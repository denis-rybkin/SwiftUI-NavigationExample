//
//  TextFieldCapsule.swift
//  NavigationExample
//
//  Created by Denis Rybkin on 2022-11-24.
//

import SwiftUI


struct TextFieldCapsule: View {
    
    private let icon: String?
    private let placeholder: String
    @Binding var text: String
    private let isPassword: Bool
    
    init(icon: String? = nil,
         _ placeholder: String,
         text: Binding<String>,
         isPassword: Bool = false) {
        self.icon = icon
        self.placeholder = placeholder
        self._text = text
        self.isPassword = isPassword
    }
    
    var body: some View {
        Group {
            HStack {
                if let icon {
                    Image(systemName: icon)
                        .foregroundColor(.lightGray)
                }
                if isPassword {
                    SecureField(placeholder, text: $text)
                } else {
                    TextField(placeholder, text: $text)
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                }
            }
        }
            .padding([.top, .bottom], 10)
            .padding([.leading, .trailing], 15)
            .background(
                Capsule()
                    .strokeBorder(Color.lightGray, lineWidth: 1)
            )
            .clipShape(Capsule())
    }
    
}


struct TextFieldCapsule_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldCapsule("placeholder", text: Binding.constant(""))
    }
}
