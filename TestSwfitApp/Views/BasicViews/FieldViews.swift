//
//  FieldContent.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/8/20.
//




import SwiftUI

struct FieldContentView: View {
  @State private var name = ""
  var body: some View {
    TextField("Enter your name", text: $name)
      .foregroundColor(.blue)
      .background(.yellow)
      .font(.largeTitle)
      .multilineTextAlignment(.center)
  }
}


#Preview {
    FieldContentView()
}
