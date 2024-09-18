//
//  TabStateView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/18.
//

import SwiftUI

struct TabStateView: View {
  @State private var selectedTab: Int = 0

  var body: some View {
    VStack {
      Button("Switch to second tab") {
        selectedTab = 1
      }
      .padding()

      TabView(selection: $selectedTab) {
        Text("First Tab")
          .tabItem {
            Image(systemName: "1.circle")
            Text("Tab 1")
          }
          .tag(0)

        Text("Second Tab")
          .tabItem {
            Image(systemName: "2.circle")
            Text("Tab 2")
          }
          .tag(1)
      }
    }
  }
}

#Preview {
    TabStateView()
}
