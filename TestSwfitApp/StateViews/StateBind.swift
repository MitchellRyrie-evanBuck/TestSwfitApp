//
//  StateBind.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/8/16.
//
import SwiftUI

struct ContentStateBindView: View {
  @State private var isSwitchedOn = false

  var body: some View {
    VStack {
      Toggle(isOn: $isSwitchedOn) {
        Text("Turn me on or off")
      }
      if isSwitchedOn {
        Text("The switch is on!")
      }
    }
    .padding()
  }
}
