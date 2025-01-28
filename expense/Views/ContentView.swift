//
//  ContentView.swift
//  expense
//
//  Created by dulieux baptiste on 28/01/2025.
//

import SwiftUI

struct ContentView: View {
    var data: [Hystory]
    
    var body: some View {
        NavigationView{
            List{
                ForEach(data){ hystory in
                    RowView(hystory: hystory)
                }
            }
        }
    }
}

#Preview {
    ContentView(data: Hystory.testData)
}
