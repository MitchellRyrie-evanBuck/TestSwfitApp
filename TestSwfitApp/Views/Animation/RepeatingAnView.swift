//
//  RepeatingAnView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/18.
//

import SwiftUI

struct RepeatingAnView: View {
  @State private var isAnimating = false

  var body: some View {
    Circle()
      .fill(.blue)
      .frame(width: 50, height: 50)
      .scaleEffect(isAnimating ? 1.5 : 1)
      .animation(
        isAnimating ?
          .easeInOut(duration: 1).repeatForever(autoreverses: true) :
          .default,
        value: isAnimating
      )
      .onAppear {
        isAnimating = true
      }
  }
}

#Preview {
    RepeatingAnView()
}
