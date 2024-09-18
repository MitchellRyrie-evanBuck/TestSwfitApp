//
//  DeclareContentView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/18.
//

import SwiftUI

struct DeclareContentView: View {
  @State private var isAnimated = false
  
  var body: some View {
    RoundedRectangle(cornerRadius: 20)
      .fill(.blue)
      .frame(width: isAnimated ? 200 : 100, height: 100)
      .animation(.linear(duration: 1), value: isAnimated)
      .onTapGesture {
        isAnimated.toggle()
      }
  }
}

#Preview {
    DeclareContentView()
}
