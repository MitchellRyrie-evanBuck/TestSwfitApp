//
//  ReplaceTextEditor.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/19.
//

import SwiftUI

struct ReplaceTextEditor: View {
  @State private var text = "This is some editable text."
  @State private var isDisabled = true
  @State private var isPresented = false
  
   var body: some View {
     NavigationStack {
       TextEditor(text: $text)
         .findDisabled(isDisabled)
         .findNavigator(isPresented: $isPresented)
         .navigationTitle("Text Editor")
         .toolbar {
           Toggle(isOn: $isPresented) {
             Label("Find", systemImage: "magnifyingglass")
           }
         }
     }
   }
}

#Preview {
    ReplaceTextEditor()
}
