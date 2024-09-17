//
//  SegmentedView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/17.
//

import SwiftUI

struct SegmentedView: View {
  @State private var selection = 0

  var body: some View {
    Picker(selection: $selection, label: Text("Picker")) {
      Text("Option 1").tag(0)
      Text("Option 2").tag(1)
      Text("Option 3").tag(2)
    }
    .pickerStyle(SegmentedPickerStyle())
  }
}

#Preview {
    SegmentedView()
}
