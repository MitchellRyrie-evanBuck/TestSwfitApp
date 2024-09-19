//
//  CreateAlert.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/19.
//

import SwiftUI

struct CreateAlert: View {
  @State private var showAlert = false

  var body: some View {
    Button("Show Alert") {
      showAlert = true
    }
    .alert(
      "Important Message",
      isPresented: $showAlert,
      actions: {
        Button("OK") {
          // Handle the acknowledgement.
          showAlert = false
        }
      },
      message: {
        Text("This is an important alert message.")
      }
    )
  }
}

#Preview {
    CreateAlert()
}
