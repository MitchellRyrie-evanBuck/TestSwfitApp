//
//  ProgressView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/17.
//

import SwiftUI

struct ProgressContentView: View {
  @State var progressValue = 0.0  // initial value of progress view
  
  var body: some View {
    VStack {
      ProgressView(value: progressValue) // progress view
        .padding()
      
      Button("Start Download") {
        // simulate the download progress
        for i in 1...100 {
          DispatchQueue.main.asyncAfter(deadline: .now() + Double(i) / 10.0) {
            progressValue = Double(i) / 100.0
          }
        }
      }
    }
  }
}

#Preview {
  ProgressContentView()
}
