//
//  AddExpenseView.swift
//  expense
//
//  Created by dulieux baptiste on 04/02/2025.
//

import SwiftUI

struct AddExpenseView: View {
    
    @State private var destination: String = ""
    @State private var value: Double = 0
    @State private var priority: Priority = .perso
    
    var body: some View {
        VStack{
            TextField("Enter the destination expense", text: $destination)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color(.systemGray4))
                .cornerRadius(10)
            
            TextField(String(format: "%.2f", <#T##arguments: any CVarArg...##any CVarArg#>), text: $value)
        }
    }
}

#Preview {
    AddExpenseView()
}
