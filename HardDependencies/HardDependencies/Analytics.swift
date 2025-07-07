//
//  Analytics.swift
//  HardDependencies
//
//  Created by Mariana Montoya on 7/7/25.
//

import Foundation

class Analytics {
    static let shared = Analytics()
    
    func track(event: String) {
        print(">> " + event)
        
        if self !== Analytics.shared {
            print(">> ...Not the Analytics singleton")
        }
    }
}
