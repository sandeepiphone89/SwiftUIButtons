//
//  SitUpRobot.swift
//  Workout
//
//  Created by Sandeep on 2023-12-10.
//

import SwiftUI

class SitUpRobot: ObservableObject {
    
    @Published var completedSitUps: Int = 0
    
    func addOneSitUp() {
        completedSitUps = completedSitUps + 1
        print(completedSitUps)
        generateHapticFeedback()
    }
    
    func resetSitUps() {
        completedSitUps = 0
        print(completedSitUps)
        generateHapticFeedback()
    }
    
    func generateHapticFeedback() {
        UINotificationFeedbackGenerator().notificationOccurred(.success)
    }
}
