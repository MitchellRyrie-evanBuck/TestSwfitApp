//
//  TabStateView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/18.
//

import SwiftUI

struct TabModalView: View {
  @State private var isPresented = false
   @State private var selectedTab: Int = 1
   
   var body: some View {
     
     TabView(selection: $selectedTab) {
       Text("First Tab")
         .tabItem {
           Image(systemName: "1.circle")
           Text("Tab 1")
         }
         .tag(1)
       
       Text("Second Tab")
         .tabItem {
           Image(systemName: "2.circle")
           Text("Tab 2")
         }
         .tag(2)
     }
     .onChange(of: selectedTab) { oldValue, newValue in
       isPresented = true
     }
     .sheet(isPresented: $isPresented) {
       TabModalContentView(isPresented: self.$isPresented)
     }
   }
}

struct TabModalContentView: View {
  @Binding var isPresented: Bool
  
  var body: some View {
    Text("This is a modal view.")
      .padding()
    Button("Dismiss") {
      isPresented = false
    }
  }
}

#Preview {
  TabModalView()
}
