//
//  MultipleAnView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/18.
//

import SwiftUI

struct MultipleAnView: View {
  @State private var isStepOne = false
   @State private var isStepTwo = false
   @State private var isStepThree = false

   var body: some View {
     Rectangle()
       .fill(isStepThree ? .green : .red)
       .frame(width: isStepTwo ? 200 : 100, height: isStepTwo ? 200 : 100)
       .offset(x: isStepOne ? 150 : 0, y: isStepOne ? 300 : 0)
       .animation(.easeInOut(duration: 1.0), value: isStepOne)
       .animation(.easeInOut(duration: 1.0), value: isStepTwo)
       .animation(.easeInOut(duration: 1.0), value: isStepThree)
       .onAppear {
         DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
           isStepOne = true
           DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
             isStepTwo = true
             DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
               isStepThree = true
             }
           }
         }
       }
   }
}

#Preview {
    MultipleAnView()
}
