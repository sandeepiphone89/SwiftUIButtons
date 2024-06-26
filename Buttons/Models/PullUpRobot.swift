//
//  PullUpRobot.swift
//  Workout
//
//  Created by Sandeep on 2023-12-10.
//

import SwiftUI

class PullUpRobot: ObservableObject {
    
    @Published var completedPullUps: Int = 0
    
    func addOnePullUp() {
        completedPullUps = completedPullUps + 1
        print(completedPullUps)
        generateHapticFeedback()
    }
    
    func resetPullUps() {
        completedPullUps = 0
        print(completedPullUps)
        generateHapticFeedback()
    }
    
    func generateHapticFeedback() {
        UINotificationFeedbackGenerator().notificationOccurred(.success)
    }
}
