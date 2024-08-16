//
//  MockButton.swift
//  tccv1
//
//  Created by thaxz on 15/08/24.
//

import SwiftUI

struct MockButton: View {
    let text: String
    let action: () -> ()
    var body: some View {
        Button {
            action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 16)
                    .frame(height: 55)
                Text(text)
                    .foregroundStyle(.white)
                    .font(.system(size: 20, weight: .medium))
            }
        }
    }
}

#Preview {
    MockButton(
        text: "Teste",
        action: {}
    )
}
