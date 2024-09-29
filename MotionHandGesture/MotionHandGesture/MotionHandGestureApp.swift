//
//  MotionHandGestureApp.swift
//  MotionHandGesture
//
//  Created by Manish Parihar on 29.09.24.
//

import SwiftUI

@main
struct MotionHandGestureApp: App {
    @State var appModel = AppModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appModel)
                .task {
                    await appModel.useLastTrainedModel()
                }
        }
    }
}
