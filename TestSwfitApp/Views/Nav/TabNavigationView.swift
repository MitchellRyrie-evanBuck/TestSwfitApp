//
//  TabNavigationView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/18.
//

import SwiftUI

struct TabNavigationView: View {
  var body: some View {
     NavigationStack {
       TabView {
         Text("First Tab")
           .tabItem {
             Image(systemName: "house")
             Text("Home")
           }
         
         Text("Second Tab")
           .tabItem {
             Image(systemName: "person")
             Text("Profile")
           }
       }
       .navigationTitle("My App")
     }
   }
}

#Preview {
    TabNavigationView()
}
