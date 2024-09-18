//
//  SizeAnView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/18.
//

import SwiftUI

struct SizeAnView: View {
  @State private var scale: CGFloat = 1.0
  
  var body: some View {
    Button("Tap Me!") {
      scale += 0.5
    }
    .scaleEffect(scale)
    .animation(.easeInOut(duration: 0.2), value: scale)
  }
}

#Preview {
    SizeAnView()
}
