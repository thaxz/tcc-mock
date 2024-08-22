//
//  TimelineSection.swift
//  tccv1
//
//  Created by thaxz on 19/08/24.
//

import Foundation

struct TimelineSection: Identifiable {
    
    let year: String
    let events: [TimelineEvent]
    
    var id: String {
        events[0].title + year
    }
    
}
