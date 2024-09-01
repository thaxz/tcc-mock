//
//  SmallButton.swift
//  tccv1
//
//  Created by thaxz on 01/09/24.
//

import Foundation
import SwiftUI

struct SmallButton: View {
    let title: String
    let type: TypeOfButton
    let action: () -> ()
    var body: some View {
        Button {
            action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .foregroundStyle(type == .primary ? Color.black : Color.theme.gray)
                Text(title)
                    .foregroundStyle(type == .primary ? Color.white : Color.black)
                    .font(.system(size: 15, weight: .medium))
            }
            .frame(height: 40)
        }
    }
}

#Preview {
    SmallButton(title: "Routes", type: .primary, action: {})
}
