//
//  SimultaneousGestures.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/19.
//

import SwiftUI

struct SimultaneousGestures: View {
  @GestureState private var rotationAngle = Angle.zero
   @GestureState private var zoomScale = CGFloat(1.0)

   var body: some View {
     let rotationGesture = RotationGesture()
       .updating($rotationAngle) { value, state, _ in
         state = value
       }

     let magnificationGesture = MagnificationGesture()
       .updating($zoomScale) { value, state, _ in
         state = value
       }

     let combinedGesture = rotationGesture.simultaneously(with: magnificationGesture)

     return Image(systemName: "sun.max.fill")
       .resizable()
       .scaledToFit()
       .frame(width: 200)
       .rotationEffect(rotationAngle)
       .scaleEffect(zoomScale)
       .gesture(combinedGesture)
       .foregroundColor(.yellow)

   }
}

#Preview {
    SimultaneousGestures()
}
