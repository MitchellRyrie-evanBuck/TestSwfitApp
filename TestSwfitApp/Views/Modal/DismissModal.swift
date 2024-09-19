//
//  DismissModal.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/19.
//

import SwiftUI

struct DismissModal: View {
  @State private var isShowingModal = false

   var body: some View {
     Button("Show Modal") {
       isShowingModal = true
     }
     .sheet(isPresented: $isShowingModal) {
       ModalBasicView()
     }
   }
}

struct ModalBasicView: View {
  @Environment(\.dismiss) var dismiss

  var body: some View {
    VStack {
      Text("This is a modal view")
      Button("Dismiss") {
        dismiss()
      }
    }
  }
}

#Preview {
    DismissModal()
}
