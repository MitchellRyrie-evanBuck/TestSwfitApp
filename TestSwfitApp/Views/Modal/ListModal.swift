//
//  ListModal.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/19.
//

import SwiftUI

struct ListModal: View {
  @State private var showModal = false

    var body: some View {
      Button("Show Modal") {
        showModal = true
      }
      .sheet(isPresented: $showModal) {
        VStack {
          List(0..<50) { item in
            Text("Item \(item)")
          }
        }
        .presentationDetents([.medium, .large])
        .presentationContentInteraction(.scrolls)
      }
    }
}

#Preview {
    ListModal()
}
