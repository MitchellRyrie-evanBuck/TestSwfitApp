//
//  ColorPickerView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/17.
//

import SwiftUI

struct ColorPickerContentView: View {
  @State private var colorChoice = Color.white

  var body: some View {
    VStack {
      ColorPicker("Choose your color", selection: $colorChoice)
        .padding()

      Text("You chose:")
        .font(.title)

      Rectangle()
        .fill(colorChoice)
        .frame(width: 100, height: 100)
        .padding()
    }
  }
}

#Preview {
  ColorPickerContentView()
}
