//
//  Color.swift
//  tccv1
//
//  Created by thaxz on 21/08/24.
//

import Foundation
import SwiftUI

extension Color {
    static let theme = ColorTheme()
}

struct ColorTheme {
    
    let label = Color("customLabelColor")
    let subtitle = Color("subtitleColor")
    let background = Color("backgroundColor")
    let rowBg = Color("rowBackgroundColor")
    let stroke = Color("strokeColor")
    let lightBlue = Color("lightBlueColor")
    let darkBlue = Color("darkBlueColor")
    let lightPurple = Color("lightPurpleColor")
    let darkPurple = Color("darkPurpleColor")
    let gray = Color("grayCustom")
    let blackBg = Color("blackBackground")
}
