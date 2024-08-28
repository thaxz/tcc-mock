//
//  ImageScroller.swift
//  tccv1
//
//  Created by thaxz on 27/08/24.
//

import SwiftUI

struct ImageScroller: View {
    @State private var scrollPosition: Int? = nil
    let imageNames: [String]
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 0) {
                ForEach(imageNames, id: \.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .frame(width: 300, height: 200)
                        .cornerRadius(15)
                        .padding(.horizontal, 8)
                }
            }
        }
        .scrollIndicators(.hidden)
        .scrollTargetLayout()
        .scrollTargetBehavior(.viewAligned)
        .scrollBounceBehavior(.basedOnSize)
        .scrollPosition(id: $scrollPosition, anchor: .center)
        .animation(.smooth, value: scrollPosition)
    }
}

#Preview {
    ImageScroller(imageNames: ["mockImg", "mockImg2"])
}
