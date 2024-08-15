//
//  ContentForm.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/8/8.
//
import SwiftUI

struct ContentFormView: View {
  @State private var username = ""
  @State private var email = ""
  @State private var password = ""

  var body: some View {
    NavigationView {
      Form {
        Section(header: Text("Personal Information")) {
          TextField("Username", text: $username)
          TextField("Email", text: $email)
        }

        Section(header: Text("Login Credentials")) {
          SecureField("Password", text: $password)
        }

        Section {
          Button(action: register) {
            Text("Register")
          }
        }
      }
      .navigationTitle("Registration Form")
    }
  }

  func register() {
    // Implement registration functionality here
      print("====")
  }
}
//#Preview {
//    ContentView()
//}
