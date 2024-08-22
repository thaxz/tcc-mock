//
//  TimelineRow.swift
//  tccv1
//
//  Created by thaxz on 21/08/24.
//

import SwiftUI

struct TimelineRow: View {
    let event: TimelineEvent
    var body: some View {
        HStack(spacing: 16){
            Image(event.headerImage)
                .resizable()
                .frame(width: 160, height: 130)
            VStack(alignment: .leading, spacing: 12){
                Text(event.title)
                    .foregroundColor(.theme.label)
                    .font(.system(size: 20, weight: .semibold))
                    .lineSpacing(6)
                    .lineLimit(3)
                Text(event.date)
                    .foregroundColor(.theme.subtitle)
                    .font(.system(size: 14, weight: .regular))
                    .lineLimit(1)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct TimelineRow_Previews: PreviewProvider {
    static var previews: some View {
        TimelineRow(event: dev.mockEvent)
    }
}
