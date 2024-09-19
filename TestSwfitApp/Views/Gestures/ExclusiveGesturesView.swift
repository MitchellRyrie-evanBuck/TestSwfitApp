//
//  ExclusiveGesturesView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/19.
//

import SwiftUI

struct ExclusiveGesturesView: View {
  @State private var dragOffset = CGSize.zero
    @State private var originalPosition = CGSize.zero

    var body: some View {
      let dragGesture = DragGesture()
        .onChanged { value in
          self.dragOffset = value.translation
        }
        .onEnded { _ in
          self.originalPosition = self.dragOffset
        }

      let doubleTapGesture = TapGesture(count: 2)
        .onEnded {
          self.dragOffset = .zero
        }

      return Image(systemName: "bird")
        .resizable()
        .scaledToFit()
        .frame(width: 100, height: 100)
        .offset(dragOffset)
        .gesture(
          doubleTapGesture.exclusively(before: dragGesture)
        )
        .animation(.easeInOut, value: dragOffset)
    }
}

#Preview {
    ExclusiveGesturesView()
}
