//
//  ImplementingSwipe.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/19.
//

import SwiftUI

struct ImplementingSwipe: View {
  @State private var items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]

  var body: some View {
    NavigationStack {
      List {
        ForEach(items, id: \.self) { item in
          Text(item)
        }
        .onDelete(perform: deleteItem)
      }
      .navigationTitle("Swipe to Delete")
    }
  }

  private func deleteItem(at offsets: IndexSet) {
    items.remove(atOffsets: offsets)
  }
}

#Preview {
    ImplementingSwipe()
}
