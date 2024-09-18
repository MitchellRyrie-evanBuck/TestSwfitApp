//
//  TapsContentView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/18.
//

import SwiftUI

struct TapsContentView: View {
  @State private var countdown = 10
  
  var body: some View {
    VStack {
      Image(systemName: "arrowtriangle.up.fill")
        .resizable()
        .frame(width: 100, height: 100)
        .foregroundStyle(.orange.gradient)
      
      Text("\(countdown) until launch")
        .padding()
    }
    .onTapGesture {
      if self.countdown > 0 {
        self.countdown -= 1
      }
    }
  }
}

#Preview {
    TapsContentView()
}
