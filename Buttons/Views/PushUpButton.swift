//
//  PushUpButton.swift
//  Buttons
//
//  Created by Sandeep Kaur on 2024-02-06.
//

import SwiftUI

struct PushUpButton: View {
    @StateObject var pushUpRobot = PushUpRobot()
    
    var body: some View {
        Text("\(pushUpRobot.completedPushUps)")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color(.white))
            .frame(width: 100, height: 100, alignment: .center)
            .background(Color(.systemBlue))
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .onTapGesture(perform: pushUpRobot.addOnePushUp)
            .onLongPressGesture(perform: pushUpRobot.resetPushUps)
    }
}

struct PushUpButton_Previews: PreviewProvider {
    static var previews: some View {
        PushUpButton()
    }
}
