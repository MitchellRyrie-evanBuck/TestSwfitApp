//
//  BasicModal.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/19.
//

import SwiftUI

struct BasicModal: View {
  @State private var showModal = false

  var body: some View {
    Button("Show Modal") {
      showModal = true
    }
    .sheet(isPresented: $showModal) {
      Text("This is a modal view")
    }
  }
}

#Preview {
    BasicModal()
}
