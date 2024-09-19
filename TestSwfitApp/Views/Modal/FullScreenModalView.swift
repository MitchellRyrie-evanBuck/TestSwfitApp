//
//  FullScreenModalView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/19.
//

import SwiftUI

struct FullScreenModalView: View {
  @Environment(\.dismiss) var dismiss

  var body: some View {
    VStack {
      Text("This is a full-screen modal view")
      Button("Dismiss") {
        dismiss()
      }
      .foregroundColor(.orange)
      .padding()
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(.blue)
    .edgesIgnoringSafeArea(.all)
  }
}

#Preview {
    FullScreenModalView()
}
