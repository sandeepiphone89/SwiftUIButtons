//
//  ContentView.swift
//  Buttons
//
//  Created by Sandeep Kaur on 2024-02-06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                PushUpButton()
                WorkoutLabel(label: "PUSH-UPS")
            }
            VStack {
                PullUpButton()
                WorkoutLabel(label: "PULL-UPS")
            }
            VStack {
                SitUpButton()
                WorkoutLabel(label: "SIT-UPS")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
