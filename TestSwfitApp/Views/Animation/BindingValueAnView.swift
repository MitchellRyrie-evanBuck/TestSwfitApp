//
//  BindingValueAnView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/18.
//

import SwiftUI

struct BindingValueAnView: View {
  @State private var selection = 0

  var body: some View {
    VStack {
      Text("Your selection is: \(selection)")
        .font(.title)

      Picker("Choose a number", selection: $selection.animation()) {
        ForEach(0..<10) {
          Text("\($0)")
        }
      }
      .pickerStyle(.wheel)
      .frame(width: 100, height: 200)
    }
  }
}

#Preview {
    BindingValueAnView()
}
