//
//  AnimatedImages.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/17.
//

import SwiftUI

struct AnimatedImages: View {
  @State private var isAnimating = false
  
  var body: some View {
    Image("background")
      .resizable()
      .scaledToFit()
      .scaleEffect(isAnimating ? 1.5 : 1.0)
      .onAppear() {
        withAnimation(.easeInOut(duration: 1.0).repeatForever(autoreverses: true)) {
          isAnimating = true
        }
      }
  }
}

#Preview {
    AnimatedImages()
}
