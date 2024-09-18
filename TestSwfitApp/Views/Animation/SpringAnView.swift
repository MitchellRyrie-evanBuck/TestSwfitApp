//
//  SpringAnView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/18.
//

import SwiftUI

struct SpringAnView: View {
  @State private var angle: Double = 0.0

  var body: some View {
    Rectangle()
      .foregroundColor(.blue)
      .frame(width: 150, height: 150)
      .rotationEffect(.degrees(angle))
      .onTapGesture {
        angle += 360
      }
      .animation(.spring(response: 0.5, dampingFraction: 0.4), value: angle)
  }
}

#Preview {
    SpringAnView()
}
