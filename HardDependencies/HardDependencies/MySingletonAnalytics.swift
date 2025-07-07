//
//  MySingletonAnalytics.swift
//  HardDependencies
//
//  Created by Mariana Montoya on 7/7/25.
//

import Foundation

class MySingletonAnalytics {
    static let shared = MySingletonAnalytics()
    
    func track(event: String) {
        Analytics.shared.track(event: event)
        
        if self !== MySingletonAnalytics.shared {
            print("<< Not the MySingletonAnalytics singleton")
        }
    }
}
