//
//  TextEditor.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/19.
//

import SwiftUI

struct TexContenttEditor: View {
  @State private var enteredText = "Type something..."

  var body: some View {
    TextEditor(text: $enteredText)
      .padding()
      .font(.title)
      .foregroundColor(.gray)
  }
}

#Preview {
  TexContenttEditor()
}
