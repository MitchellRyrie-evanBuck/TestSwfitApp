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
    }
    .padding()
    .background(.orange)
    .foregroundColor(.white)
    .font(.title2)
    .clipShape(RoundedRectangle(cornerRadius: 10))
  }
}

struct ButtonIcon: View {
  var body: some View {
    VStack {
      Button(action: {
        // Action to perform when the button is tapped
      }) {
        Label("Show Some Love!", systemImage: "heart.fill")
          .padding()
          .foregroundColor(.white)
          .background(Color.blue)
          .cornerRadius(10)
      }
    }
  }
}
struct FullScreenButtonView: View {
  var body: some View {
    Button(action: {
      print("Full Screen Button Tapped")
    }, label: {
      Text("Full Screen Button")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    })
  }
}

struct Button3D: View {
  @State private var isPressed = false  //1
  var body: some View {
    VStack {
          Button(action: {
            isPressed.toggle()  //2
          }) {
            Text("3D Button")  //3
          }
          .font(.title)  //4
          .frame(width: 200, height: 50)  //5
          .background(  //6
            ZStack {
              Color(isPressed ? .gray : .blue)  //7

              RoundedRectangle(cornerRadius: 10, style: .continuous)
                .foregroundColor(.white)
                .blur(radius: 4)
                .offset(x: -8, y: -8)

              RoundedRectangle(cornerRadius: 10, style: .continuous)
                .fill(
                  LinearGradient(gradient: Gradient(colors: [.white, Color(.white).opacity(0.5)]),
                                 startPoint: .topLeading,
                                 endPoint: .bottomTrailing)
                )
                .padding(2)
                .blur(radius: 2)
            }
          )
          .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))  //8
          .shadow(color: Color(isPressed ? .blue : .gray).opacity(0.3), radius: 20, x: 20, y: 20)  //9
          .shadow(color: Color(isPressed ? .blue : .gray).opacity(0.2), radius: 20, x: -20, y: -20)  //9
          .scaleEffect(isPressed ? 0.95 : 1)  //10
          .animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 1), value: isPressed)  //11
          .foregroundColor(isPressed ? .blue : .white)  //12
        }
  }
}

struct ButtonContentView: View {
  var body: some View {
    VStack{
      BaseButton()
      ImgButton()
      ButtonIcon()
//      FullScreenButtonView()
      Button3D()
    }
  }
}

#Preview {
  ButtonContentView()
}
