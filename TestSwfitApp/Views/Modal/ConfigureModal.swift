//
//  ConfigureModal.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/19.
//

import SwiftUI

struct ConfigureModal: View {
  @State private var showModal = false

  var body: some View {
    Button("Show Modal") {
      showModal = true
    }
    .sheet(isPresented: $showModal) {
      Text("Hello, world!")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.blue.opacity(0.2))
        .presentationDetents([.medium, .large])
    }
  }
}

#Preview {
    ConfigureModal()
}
