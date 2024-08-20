//
//  Storage.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/8/17.
//
import SwiftUI

struct ContentStorageView: View {
    @SceneStorage("selectedTab") var selectedTab: String?

    var body: some View {
      TabView(selection: $selectedTab) {
        Text("Tab 1111")
          .tabItem {
            Label("Tab 11", systemImage: "1.circle")
          }
          .tag("Tab1")

        Text("Tab 2")
          .tabItem {
            Label("Tab 2", systemImage: "2.circle")
          }
          .tag("Tab2")
      }
    }
}
#Preview {
    ContentStorageView()
}
