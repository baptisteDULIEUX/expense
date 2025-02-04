//
//  RowView.swift
//  expense
//
//  Created by dulieux baptiste on 28/01/2025.
//

import SwiftUI

struct RowView: View {
    
    let history: History
    
    var body: some View {
        HStack {
            Text(history.title)
            Spacer()
            Text(String(format: "%.2f €", history.value))
            Text(history.priority.rawValue)
                .font(.footnote)
                .padding(3)
                .foregroundStyle(
                    colorForPriority(priority: history.priority.rawValue)
                )
                .frame(width:62)
                .overlay(
                    Capsule().stroke(colorForPriority(priority: history.priority.rawValue), lineWidth: 0.75)
                )
        }
        .font(.title2)
        .padding(.vertical, 10)
    }
    
    private func colorForPriority(priority: String) -> Color {
        switch priority {
        case "Perso":
            return Color(.systemRed)
        case "Pro":
            return Color(.systemGreen)
        case "Vacation":
            return Color(.systemYellow)
        default:
            return Color.primary
        }
    }
}

#Preview {
    RowView(history: History.testData[0])
}
