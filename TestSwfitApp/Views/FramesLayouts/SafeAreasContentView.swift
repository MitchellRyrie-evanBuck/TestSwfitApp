//
//  SafeAreasContentView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/18.
//

import SwiftUI

struct SafeAreasContentView: View {
  var body: some View {
      ZStack {
        Image("ver_1")
          .resizable()
          .aspectRatio(contentMode: .fill)
          .edgesIgnoringSafeArea(.all)

        VStack {
          Text("Welcome to Beach Paradise!")
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding()
            .background(Color.black.opacity(0.7))
            .cornerRadius(10)

          Spacer()
        }
        .padding(.horizontal)
      }
    }
}

#Preview {
    SafeAreasContentView()
}
