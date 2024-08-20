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

let examples: [Example] = [
      Example(name: "网格测试", destination: AnyView(ContentGridView())),
      Example(name: "表单测试", destination: AnyView(ContentFormView())),
      Example(name: "Text测试", destination: AnyView(ContentTextView())),
      Example(name: "导航测试", destination: AnyView(ContentNavView())),
      Example(name: "按钮测试", destination: AnyView(ContentButtonView())),
//          Example(name: "UI测试", destination: AnyView(SwiftUIView())),
      Example(name: "State 数据", destination: AnyView(ContentStateBindView())),
      Example(name: "Observ 数据", destination: AnyView(ContentObservView())),
      Example(name: "ObservableObject 数据", destination: AnyView(ContentStateAcrossView())),
      Example(name: "StateObject 数据", destination: AnyView(ContentStateObjectView())),
      Example(name: "Combine 数据", destination: AnyView(ContentCombineView())),
      Example(name: "Storage 数据", destination: AnyView(ContentStorageView())),
      Example(name: "ContentObservableObjectView 数据", destination: AnyView(ContentObservableObjectView())),
  ]
let examplesField: [Example] = [
//      Example(name: "网格测试", destination: AnyView(FieldContentView())),
   
  ]
  

struct ContentMainView: View {

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

// 其他页面的示例
struct OtherView: View {
    var body: some View {
        NavigationView {
            ScrollView {  // 添加 ScrollView 以允许滚动
                LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3)) {
                    ForEach(examplesField) { example in
                        NavigationLink(destination: example.destination) {
                            VStack {
                                Text(example.name)
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 100)
                                    .background(.blue)
                                    .modifier(BoldAndItalicModifier())
                                    .foregroundColor(.white)
                            }
                        }
                    }
                }
            }
            .navigationTitle("示例列表") // 如果需要，可以为 NavigationView 添加标题
        }
    }
}

// 主视图，包含底部切换栏
struct ContentView: View {
    var body: some View {
        TabView {
            ContentMainView()
                .tabItem {
                    Label("首页", systemImage: "house")
                }
            
            OtherView()
                .tabItem {
                    Label("textField", systemImage: "star")
                }
        }
    }
}

#Preview {
    ContentView()
}
