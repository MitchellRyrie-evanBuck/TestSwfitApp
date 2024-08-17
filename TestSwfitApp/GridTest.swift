//
//  GridTest.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/8/13.
//
import SwiftUI

struct BoldAndItalicModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .fontWeight(.bold)
      .italic()
  }
}

struct ContentGridView: View {
  let items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]
  let columns = [
    GridItem(.flexible()),
    GridItem(.flexible()),
    GridItem(.flexible())
  ]

  var body: some View {
    LazyVGrid(columns: columns, spacing: 16) {
      ForEach(items, id: \.self) { item in
        Text(item)
          .frame(maxWidth: .infinity)
          .frame(height: 100)
          .background(.blue)
          .modifier(BoldAndItalicModifier())
          .foregroundColor(.white)
      }
    }
    .padding()
      Text("Hello, World!")
        .modifier(BoldAndItalicModifier())
  }
}



#Preview {
    ContentGridView()
}
