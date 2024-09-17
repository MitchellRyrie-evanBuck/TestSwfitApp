//
//  Button.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/17.
//

import SwiftUI

struct ImgButton : View{
  var body : some View{
    Button(action: {
         // action to perform when the button is tapped
      print("Button was tapped!")
       }) {
         Image("background")
           .resizable() // This allows the image to be resized
           .frame(width: 200, height: 120) // This sets the size of the image
       }
  }
}

struct BaseButton: View{
  var body: some View {
    Button("Press Me!") {
      // Button action goes here
//      Image("background")
//              .resizable()
//              .frame(width: 100, height: 100)
    }
    .padding()
    .background(.orange)
    .foregroundColor(.white)
    .font(.title2)
    .clipShape(RoundedRectangle(cornerRadius: 10))
  }
}

struct ButtonContentView: View {
  var body: some View {
    VStack{
      BaseButton()
      ImgButton()
    }
  }
}

#Preview {
  ButtonContentView()
}
