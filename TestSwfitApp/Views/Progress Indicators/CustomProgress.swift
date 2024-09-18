//
//  CustomProgress.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/18.
//

import SwiftUI

struct CustomProgress: View {
  var body: some View {
    CustomContentProgress()
  }
}

struct CustomContentProgress: View {
  @State private var progressValue = 0.5
  var body: some View {
    ProgressView(value: progressValue)
      .progressViewStyle(CustomProgressViewStyle())
      .onAppear {
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
          if progressValue < 1.0 {
            progressValue += 0.01
          } else {
            timer.invalidate()
          }
        }
      }
  }
}

struct CustomProgressViewStyle: ProgressViewStyle {
  func makeBody(configuration: Configuration) -> some View {
    VStack {
      ProgressView(value: configuration.fractionCompleted)
        .accentColor(configuration.fractionCompleted! < 1.0 ? .red : .blue)
      Text("\(Int((configuration.fractionCompleted ?? 0) * 100))%")
    }
  }
}
#Preview {
    CustomProgress()
}
