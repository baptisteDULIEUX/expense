//
//  expenseApp.swift
//  expense
//
//  Created by dulieux baptiste on 28/01/2025.
//

import SwiftUI

@main
struct expenseApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(data: History.testData)
        }
    }
}
