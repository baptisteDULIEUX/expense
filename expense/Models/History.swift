//
//  History.swift
//  expense
//
//  Created by dulieux baptiste on 28/01/2025.
//

import Foundation


struct Hystory: Identifiable {
    var id = UUID()
    var title: String
    var value: Double
    var type: String
    
    static var testData = [
        Hystory(title: "Le bon de jb", value: 140.5, type: "Perso"),
        Hystory(title: "Shaco", value: 150.0, type: "Professionnel"),
        
    ]
}
