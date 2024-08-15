//
//  ContentView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/6/17.
//
//
import SwiftUI
struct Example: Identifiable {
    let id = UUID()
    let name: String
    let destination: AnyView
}
struct ContentView: View {
    let examples: [Example] = [
          Example(name: "网格测试", destination: AnyView(ContentGridView())),
          Example(name: "表单测试", destination: AnyView(ContentFormView())),
          Example(name: "导航测试", destination: AnyView(ContentNavView())),
          Example(name: "按钮测试", destination: AnyView(ContentButtonView())),
          Example(name: "UI测试", destination: AnyView(SwiftUIView())),
      ]
      
      var body: some View {
          NavigationView {
              List(examples) { example in
                  NavigationLink(destination: example.destination) {
                      Text(example.name)
                  }
              }
              .navigationTitle("示例列表")
          }
      }
}

#Preview {
    ContentView()
}
