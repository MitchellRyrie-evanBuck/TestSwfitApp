//
//  DelayedAnView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/18.
//

import SwiftUI

struct DelayedAnView: View {
  @State private var isAnimating = false

  var body: some View {
    VStack {
      Button("Animate") {
        withAnimation(.easeInOut(duration: 2).delay(1)) {
          isAnimating.toggle()
        }
      }
      .padding()
      RoundedRectangle(cornerRadius: isAnimating ? 50 : 10)
        .foregroundColor(.blue)
        .frame(width: isAnimating ? 300 : 100, height: isAnimating ? 300 : 100)
        .animation(.easeInOut(duration: 2), value: isAnimating)
    }
  }
}

#Preview {
    DelayedAnView()
}
