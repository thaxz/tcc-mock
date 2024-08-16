//
//  NavigationManager.swift
//  tccv1
//
//  Created by thaxz on 15/08/24.
//

import Foundation
import SwiftUI

// MARK: Manager class to control Navigation
final class NavigationRouter: ObservableObject {
    
    @Published var routes: [Route] = []
    
    /// Pushing to any view that is inside of Route enum
    func push(to screen: Route){
        routes.append(screen)
    }
    
    /// Back to root (MenuView)
    func popToRoot(){
        routes = []
    }
    
    /// Back one view
    func popToLast(){
        _ = routes.popLast()
    }
    
}
