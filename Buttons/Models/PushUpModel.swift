//
//  PushUpModel.swift
//  Buttons
//
//  Created by Sandeep Kaur on 2024-03-10.
//

import SwiftUI

class  PushUpModel: ObservableObject {
    @Published var completedPushUps: Int = 0
    
    func addOnePushUp() {
        completedPushUps = completedPushUps + 1
        print(completedPushUps)
        generateHapticFeedback()
    }
    
    func resetPushUps() {
        completedPushUps = 0
        print(completedPushUps)
        generateHapticFeedback()
    }
    
    func generateHapticFeedback() {
        UINotificationFeedbackGenerator().notificationOccurred(.success)
    }
}

