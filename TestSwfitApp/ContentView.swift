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
//          Example(name: "UI测试", destination: AnyView(SwiftUIView())),
          Example(name: "State 数据", destination: AnyView(ContentStateBindView())),
          Example(name: "Observ 数据", destination: AnyView(ContentObservView())),
          Example(name: "ObservableObject 数据", destination: AnyView(ContentStateAcrossView())),
          Example(name: "StateObject 数据", destination: AnyView(ContentStateObjectView())),
          Example(name: "Combine 数据", destination: AnyView(ContentCombineView())),
          Example(name: "Storage 数据", destination: AnyView(ContentStorageView())),
          
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
