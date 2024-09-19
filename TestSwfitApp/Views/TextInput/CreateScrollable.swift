//
//  CreateScrollable.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/19.
//

import SwiftUI

struct CreateScrollable: View {
  @State private var text = "A long string of text that goes on and on and on and on and on and on and on and on..."
  @State private var name: PersonNameComponents? = nil
  
   var body: some View {
     TextField("Enter text here", text: $text, axis: .vertical)
       .padding()
     
     VStack(spacing: 32) {
           Text("Input: \(String(describing: name))")
           TextField(
             "Enter Your Full Name",
             value: $name,
             format: .name(style: .medium)
           )
         }
         .padding()
   }
}

#Preview {
    CreateScrollable()
}
