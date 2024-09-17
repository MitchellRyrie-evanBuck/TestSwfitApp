//
//  PickerView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/17.
//

import SwiftUI

struct PickerView: View {
  let options = ["Frida Kahlo", "Georgia O'Keeffe", "Mary Cassatt", "Lee Krasner", "Helen Frankenthaler"]
   @State private var selectedOption = 0

   var body: some View {
     VStack {
       HStack {
//         Image(systemName: "paintpalette")
//           .foregroundColor(.blue)
//           .padding(.trailing, 4)

         Text("artist:")
           .font(.title)

         Text(options[selectedOption])
           .font(.title)
           .padding(.leading, 4)
       }
       .padding()

       Picker("Options", selection: $selectedOption) {
         ForEach(options.indices, id: \.self) { index in
           Text(options[index])
             .font(.headline)
         }
       }
       .pickerStyle(.wheel)
       .padding()
     }
   }
}

#Preview {
    PickerView()
}
