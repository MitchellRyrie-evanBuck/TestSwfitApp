//
//  ImplementingDragging.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/19.
//

import SwiftUI

struct ImplementingDragging: View {
  @State private var circlePosition = CGPoint(x: 100, y: 100)

   var body: some View {
     Circle()
       .fill(Color.blue)
       .frame(width: 100, height: 100)
       .position(circlePosition)
       .gesture(
         DragGesture()
           .onChanged { gesture in
             self.circlePosition = gesture.location
           }
       )
   }
}

#Preview {
    ImplementingDragging()
}
