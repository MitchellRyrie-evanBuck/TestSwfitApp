//
//  mixture.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/17.
//

import SwiftUI


struct MixtureView: View {
  var body: some View {
    ZStack {
      Image("user_1")
        .resizable()
        .scaledToFill()
        .edgesIgnoringSafeArea(.all)

      Image("user_2")
        .resizable()
        .scaledToFill()
        .blendMode(.multiply)
        .opacity(0.7)
    }
  }
}
#Preview {
  MixtureView()
}
