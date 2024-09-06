//
//  ImageScroller.swift
//  tccv1
//
//  Created by thaxz on 27/08/24.
//

import SwiftUI

struct ImageScroller: View {
    let imageNames: [String]
    var body: some View {
        TabView {
            ForEach(imageNames, id: \.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
            }
        }
        .frame(height: 304)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    ZStack{
        Color.black
        ImageScroller(imageNames: ["mockImg", "mockImg2"])
    }
}
