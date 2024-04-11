//
//  WorkoutLabel.swift
//  Buttons
//
//  Created by Sandeep Kaur on 2024-02-06.
//

import SwiftUI

struct WorkoutLabel: View {
    
    let label: String
    
    var body: some View {
        Text(label)
            .font(.caption2)
            .fontWeight(.bold)
            .foregroundColor(Color(.systemRed))
            .kerning(2)
            .padding(.top, 20)
            .padding(.bottom, 20)
    }
}

struct WorkoutLabel_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutLabel(label: "")
    }
}
