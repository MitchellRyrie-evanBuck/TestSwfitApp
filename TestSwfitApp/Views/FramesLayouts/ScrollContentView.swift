//
//  ScrollContentView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/18.
//

import SwiftUI

struct ScrollContentView: View {
  var body: some View {
     VStack {
       // Vertical ScrollView
       ScrollView(.vertical) {
         VStack(spacing: 20) {
           ForEach(1...20, id: \.self) { index in
             Text("Row \(index)")
               .font(.title)
           }
         }
         .padding()
         .frame(maxWidth: .infinity)
       }

       Divider()

       // Horizontal ScrollView
       ScrollView(.horizontal, showsIndicators: false) {
         HStack(spacing: 20) {
           ForEach(1...20, id: \.self) { index in
             Text("Item \(index)")
               .font(.title)
           }
         }
         .padding()
       }
     }
   }
}

#Preview {
    ScrollContentView()
}
