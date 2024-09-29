//
//  MLGameView.swift
//  MotionHandGesture
//
//  Created by Manish Parihar on 29.09.24.
//

import SwiftUI

struct MLGameView: View {
    @EnvironmentObject var appModel: AppModel

    var body: some View {
        RPSGameView(isMLGame: true)
            .environmentObject(appModel)
    }
}
