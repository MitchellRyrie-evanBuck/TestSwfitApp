//
//   NavigatView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/8/8.
//


import SwiftUI

struct ContentNavView: View {
    let tasks = ["Task 1", "Task 2", "Task 3", "Task 4", "Task 5"]
  var body: some View {
     
    NavigationStack {
      VStack {
          List(tasks, id: \.self) { task in
             Text(task)
           }
        NavigationLink(destination: DetailView()) {
          Text("Go to Detail View")
        }
      }
      .navigationTitle("Home")
      .navigationBarTitleDisplayMode(.large)
      .toolbar {
        ToolbarItem(placement: .navigationBarTrailing) {
          Button(action: {
            print("Settings tapped")
          }) {
            Text("Settings")
          }
        }
          
      }
    }
  }
}

struct DetailView: View {
      @State private var isSwitchedOn = false
       var body: some View {
         VStack {
           Toggle(isOn: $isSwitchedOn) {
             Text("Turn me on or off")
           }
           if isSwitchedOn {
             Text("The switch is on!")
           }
         }
         .padding()
       }
}

#Preview {
    ContentNavView()
}
