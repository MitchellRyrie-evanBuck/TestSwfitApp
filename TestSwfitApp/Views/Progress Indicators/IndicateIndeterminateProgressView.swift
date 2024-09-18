//
//  IndicateIndeterminateProgressView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/18.
//

import SwiftUI

struct IndicateIndeterminateProgressView: View {
  var body: some View {
     IndeterminateProgressView()
   }
}

struct IndeterminateProgressView: View {
  @State private var isLoading = true

  var body: some View {
    VStack {
      ProgressView("Loading…")
        .progressViewStyle(.circular)
        .scaleEffect(1.0, anchor: .center) // Optional: make it bigger
    }
    .onAppear {
      startAnimating()
    }
  }

  func startAnimating() {
    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
      withAnimation(Animation.linear(duration: 1.5).repeatForever()) {
        isLoading = true
      }
    }
  }
}

#Preview {
    IndicateIndeterminateProgressView()
}
