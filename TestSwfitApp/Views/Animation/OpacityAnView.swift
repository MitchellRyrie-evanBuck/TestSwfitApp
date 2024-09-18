//
//  OpacityAnView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/18.
//

import SwiftUI

struct OpacityAnView: View {
  @State private var opacity: Double = 0.0

  var body: some View {
    ZStack {
   
      Image("ver_1")
        .resizable()
        .aspectRatio(contentMode: .fill)
        .edgesIgnoringSafeArea(.all).opacity(opacity)

      Button(opacity == 0.0 ? "Fade In" : "Fade Out") {
        withAnimation(.easeInOut(duration: 2)) {
          opacity = opacity == 0.0 ? 1.0 : 0.0
        }
      }
    }
  }
}

#Preview {
    OpacityAnView()
}
