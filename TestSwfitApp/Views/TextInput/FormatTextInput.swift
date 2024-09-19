//
//  FormatTextInput.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/19.
//

import SwiftUI

struct FormatTextInput: View {
  @State private var name: String = ""
  @State private var email: String = ""
  @State private var password = ""
  
  var body: some View {
    VStack(spacing: 16) {
      TextField("Enter Full Name", text: $name)
        .autocapitalization(.words)
        .textContentType(.name)
        .padding()

      TextField("Enter Email Address", text: $email)
        .autocapitalization(.none)
        .keyboardType(.emailAddress)
        .textContentType(.emailAddress)
        .padding()
    }
    .padding()
    SecureField("Password", text: $password)
       .textFieldStyle(.roundedBorder)
       .padding()
       .cornerRadius(10)
       .shadow(radius: 10)
       .padding()
       .frame(width: 300)
       .padding(.bottom, 50)
  }
}

#Preview {
    FormatTextInput()
}
