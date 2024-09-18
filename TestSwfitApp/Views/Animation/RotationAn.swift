//
//  RotationAn.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/18.
//

import SwiftUI

struct RotationAn: View {
  @State private var rotate = false

  var body: some View {
    VStack {
      Button(action: {
        rotate.toggle()
      }) {
        Text("Rotate")
          .font(.title)
          .fontWeight(.bold)
          .foregroundColor(.white)
          .padding()
          .background(.blue)
          .cornerRadius(10)
      }
      .rotation3DEffect(.degrees(rotate ? 180 : 0), axis: (x: 0, y: 1, z: 0))
      .animation(.easeInOut(duration: 0.5), value: rotate)
    }
  }
}

#Preview {
    RotationAn()
}
