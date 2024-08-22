//
//  TimelineEvent.swift
//  tccv1
//
//  Created by thaxz on 19/08/24.
//

import Foundation

struct TimelineEvent: Identifiable {
    
    let title: String
    let date: String
    let headerImage: String
    
    var id: String {
        title + date
    }
    
}
