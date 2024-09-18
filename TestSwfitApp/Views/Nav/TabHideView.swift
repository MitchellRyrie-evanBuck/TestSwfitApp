//
//  TabHideView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/18.
//

import SwiftUI

struct TabHideView: View {
  @State private var isTabViewHidden = false

  var body: some View {
    VStack {
      Button(action: {
        isTabViewHidden.toggle()
      }) {
        Text(isTabViewHidden ? "Show Tab View" : "Hide Tab View")
      }
      .padding()

      if !isTabViewHidden {
        TabView {
          Text("First View")
            .tabItem {
              Image(systemName: "1.circle")
              Text("First")
            }

          Text("Second View")
            .tabItem {
              Image(systemName: "2.circle")
              Text("Second")
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
      }
    }
  }
}

#Preview {
    TabHideView()
}
