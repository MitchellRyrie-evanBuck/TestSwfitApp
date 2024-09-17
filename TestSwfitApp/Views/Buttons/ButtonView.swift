//
//  Button.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/17.
//

import SwiftUI

struct ButtonContentView: View {
  var body: some View {
    Button("Press Me!") {
      // Button action goes here
    }
    .padding()
    .background(.orange)
    .foregroundColor(.white)
    .font(.title2)
    .clipShape(RoundedRectangle(cornerRadius: 10))
  }
}

#Preview {
  ButtonContentView()
}
