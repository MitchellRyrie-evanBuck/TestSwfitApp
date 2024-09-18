//
//  CircularContentProgressView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/18.
//

import SwiftUI

struct CircularContentProgressView: View {
  @State private var progress: CGFloat = 0.2 // example progress value

   var body: some View {
     VStack {
       CircularProgressView(progress: progress)
         .frame(width: 200, height: 200) // adjust size as needed

       Slider(value: $progress, in: 0...1) // Slider to adjust progress for demonstration
         .padding()
     }
   }
}
struct CircularProgressView: View {
  let progress: CGFloat

  var body: some View {
    ZStack {
      // Background for the progress bar
      Circle()
        .stroke(lineWidth: 20)
        .opacity(0.1)
        .foregroundColor(.blue)

      // Foreground or the actual progress bar
      Circle()
        .trim(from: 0.0, to: min(progress, 1.0))
        .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
        .foregroundColor(.blue)
        .rotationEffect(Angle(degrees: 270.0))
        .animation(.linear, value: progress)
    }
  }
}

#Preview {
    CircularContentProgressView()
}
