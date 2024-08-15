//
//  Button.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/8/15.
//

import SwiftUI
struct ContentButtonView: View {
    @State var show = false
    @Namespace var container
    @State var isAnimating = false
    let gradient = Gradient(colors: [.purple,.teal])
    var body: some View{
     
        ZStack{
            Color.black
          
            LinearGradient(gradient: gradient, startPoint: isAnimating ? .topTrailing: .bottomLeading, endPoint: isAnimating ? .bottomLeading : .center)
                .animation(.easeInOut(duration: 1).repeatForever(
                    autoreverses: true),value: isAnimating)
                .frame(width: 200, height: 86)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .blur(radius: 8)
            
            Button(action: {
                show.toggle()
                print("Button Pressed")
              }, label: {
                Text("Press Me!")
                  .font(.largeTitle)
                  .foregroundColor(.white)
              })
            
            .matchedTransitionSource(id: 1, in: container)
            .sheet(isPresented: $show ){
                Color.teal
                    .ignoresSafeArea()
                    .overlay(Text("Swfit ui"))
                    .navigationTransition(.zoom(sourceID: 1, in: container))
                    
            }
            .font(.system(size: 32,weight: .bold))
                .foregroundColor(.white)
                .frame(width: 200, height: 80)
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 20))
           
        } .ignoresSafeArea()
            .onAppear{
                isAnimating.toggle()
            }
    }
}
