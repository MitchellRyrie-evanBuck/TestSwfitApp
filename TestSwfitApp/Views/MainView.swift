//
//  MainView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/16.
//

import SwiftUI

struct Example: Identifiable {
    let id = UUID()
    let name: String
    let destination: AnyView
}

struct ExampleCategory: Identifiable {
    let id = UUID()
    let name: String
    let examples: [Example]
}

// 创建所有示例的分类
let exampleCategories: [ExampleCategory] = [
    ExampleCategory(name: "基础组件", examples: [
        Example(name: "网格测试", destination: AnyView(ContentGridView())),
        Example(name: "表单测试", destination: AnyView(ContentFormView())),
        Example(name: "Text测试", destination: AnyView(ContentTextView())),
        Example(name: "按钮测试", destination: AnyView(ContentButtonView()))
    ]),
    ExampleCategory(name: "状态管理", examples: [
        Example(name: "State 数据", destination: AnyView(ContentStateBindView())),
        Example(name: "Observ 数据", destination: AnyView(ContentObservView())),
        Example(name: "ObservableObject 数据", destination: AnyView(ContentStateAcrossView())),
        Example(name: "StateObject 数据", destination: AnyView(ContentStateObjectView()))
    ]),
    ExampleCategory(name: "数据处理", examples: [
        Example(name: "Combine 数据", destination: AnyView(ContentCombineView())),
        Example(name: "Storage 数据", destination: AnyView(ContentStorageView())),
        Example(name: "ContentObservableObjectView 数据", destination: AnyView(ContentObservableObjectView()))
    ])
]

struct ContentMainView: View {
  @State private var searchText = ""
  var filteredCategories: [ExampleCategory] {
          // 如果搜索框为空，返回全部分类
          if searchText.isEmpty {
              return exampleCategories
          } else {
              // 根据搜索框内容过滤分类下的示例
              return exampleCategories.map { category in
                  let filteredExamples = category.examples.filter { example in
                      example.name.localizedCaseInsensitiveContains(searchText)
                  }
                  return ExampleCategory(name: category.name, examples: filteredExamples)
              }.filter { !$0.examples.isEmpty } // 去除没有匹配结果的分类
          }
      }
      
      var body: some View {
          NavigationView {
              List {
                  // 循环渲染每个过滤后的分类
                  ForEach(filteredCategories) { category in
                      Section(header: Text(category.name)) {
                          // 渲染每个分类下的示例
                          ForEach(category.examples) { example in
                              NavigationLink(destination: example.destination) {
                                  Text(example.name)
                                      .listRowBackground(
                                          LinearGradient(gradient: Gradient(colors: [.blue, .purple]),
                                                         startPoint: .leading,
                                                         endPoint: .trailing)
                                      )
                              }
                          }
                      }
                  }
              }
              .navigationTitle("示例列表")
              .searchable(text: $searchText) // 添加搜索框
          }
      }
}

#Preview {
    ContentMainView()
}
