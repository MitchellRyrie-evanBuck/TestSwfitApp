//
//  Consistent.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/17.
//

import SwiftUI

struct ConsistentView: View {
  @State private var changeColor = false

  var body: some View {
      Image("background")
        .renderingMode(.template)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 200, height: 200)
        .foregroundColor(changeColor ? .purple : .gray)
        .onAppear {
          withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses: true)) {
            changeColor.toggle()
          }
        }
    }
}

#Preview {
  ConsistentView()
}
