//
//  RotatingViewsGestures.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/19.
//

import SwiftUI

struct RotatingViewsGestures: View {
  @State private var angle: Angle = .degrees(0)
   
   var body: some View {
     Rectangle()
       .fill(Color.blue)
       .frame(width: 100, height: 100)
       .rotationEffect(angle)
       .gesture(RotationGesture()
         .onChanged { angle in
           self.angle = angle
         })
   }
}

#Preview {
    RotatingViewsGestures()
}
