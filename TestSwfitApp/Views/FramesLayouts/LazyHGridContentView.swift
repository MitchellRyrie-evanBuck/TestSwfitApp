//
//  LazyHGridContentView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/18.
//

import SwiftUI

struct LazyHGridContentView: View {
  var body: some View {
    // Define your grid layout first
    let columns = [
      GridItem(.flexible()),
      GridItem(.flexible())
    ]
    // Then create a LazyVGrid using the layout
    LazyVGrid(columns: columns, spacing: 10) {
      ForEach(0..<10) { index in
        Text("Item \(index)")
          .padding()
          .background(Color.blue)
          .cornerRadius(10)
      }
    }
  }
}

#Preview {
    LazyHGridContentView()
}
