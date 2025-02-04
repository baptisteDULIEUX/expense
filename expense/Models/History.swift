//
//  History.swift
//  expense
//
//  Created by dulieux baptiste on 28/01/2025.
//

import Foundation

enum Priority: String, CaseIterable {
    case perso = "Perso"
    case pro = "Pro"
    case vacation = "Vacation"
}

struct History: Identifiable {
    var id = UUID()
    var title: String
    var value: Double
    var priority: Priority
    
    
    static var testData = [
        History(title: "Le bon de jb", value: 140.5, priority: .perso),
        History(title: "Shaco", value: 150.0, priority: .pro),
        
    ]
}
