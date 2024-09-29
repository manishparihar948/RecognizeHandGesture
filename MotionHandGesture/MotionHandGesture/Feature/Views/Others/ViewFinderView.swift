//
//  ViewFinderView.swift
//  MotionHandGesture
//
//  Created by Manish Parihar on 29.09.24.
//

import SwiftUI

struct ViewfinderView: View {
    @Binding var image: Image?
    
    var body: some View {
        GeometryReader { geometry in
            if let image = image {
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .clipped()
            } else {
                Rectangle()
                    .fill(.black)
            }
        }
    }
}
