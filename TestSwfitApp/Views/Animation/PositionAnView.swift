//
//  PositionAnView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/18.
//

import SwiftUI

struct PositionAnView: View {
  @State var offset = CGSize(width: 0, height: 0)

  var body: some View {
    Image(systemName: "arrow.up")
      .font(.largeTitle)
      .offset(offset)
      .animation(.spring(), value: offset)
      .gesture(
        DragGesture()
          .onChanged { value in
            offset = value.translation
          }
          .onEnded { _ in
            withAnimation {
              offset = .zero
            }
          }
      )
  }
}

#Preview {
    PositionAnView()
}
