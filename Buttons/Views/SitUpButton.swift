//
//  SitUpButton.swift
//  Workout
//
//  Created by Sandeep on 2023-12-10.
//

import SwiftUI

struct SitUpButton: View {
    
    @StateObject var sitUpRobot = SitUpRobot()
    
    var body: some View {
        Text("\(sitUpRobot.completedSitUps)")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color(.white))
            .frame(width: 100, height: 100, alignment: .center)
            .background(Color(.systemGreen))
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .onTapGesture(perform: sitUpRobot.addOneSitUp)
            .onLongPressGesture(perform: sitUpRobot.resetSitUps)
    }
}
