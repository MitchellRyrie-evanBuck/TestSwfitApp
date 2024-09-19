//
//  DetectingLongPress.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/19.
//

import SwiftUI

struct DetectingLongPress: View {
  var body: some View {
     Text("Tap and hold me!")
       .padding()
       .background(Color.blue)
       .foregroundColor(Color.white)
       .cornerRadius(10)
       .onLongPressGesture(minimumDuration: 1) {
         print("Long press detected!")
       }
   }
}

#Preview {
    DetectingLongPress()
}
