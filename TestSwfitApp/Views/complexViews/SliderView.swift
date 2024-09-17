//
//  SliderView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/17.
//

import SwiftUI

struct SliderView: View {
  @State private var value: Double = 0.5

   var body: some View {
     VStack {
       Slider(value: $value, in: 0...1)
       Text("Value: \(value, specifier: "%.2f")")
     }
   }
}

#Preview {
    SliderView()
}
