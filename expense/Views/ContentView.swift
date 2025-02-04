//
//  ContentView.swift
//  expense
//
//  Created by dulieux baptiste on 28/01/2025.
//

import SwiftUI

struct ContentView: View {
    var data: [History]
    
    var body: some View {
        NavigationView{
            List{	
                ForEach(data){ history in
                    RowView(history: history)
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Expenses")
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink("Add", destination: AddExpenseView())
                }
            }
        }
    }
}

#Preview {
    ContentView(data: History.testData)
}
