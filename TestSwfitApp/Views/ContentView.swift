//
//  ContentView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/6/17.
//
//
import SwiftUI


// 主视图，包含底部切换栏
struct ContentView: View {
    var body: some View {
      TabView {
        ContentMainView()
          .tabItem {
            Label("首页", systemImage: "text.page").symbolVariant(.fill)
          }
        AnmationView()
          .tabItem {
            Label("Anmation", systemImage: "command.circle.fill").symbolVariant(.fill)
          }
        Trend().tabItem{
          Label("Trend", systemImage: "chart.bar" )
          }
        Chart().tabItem{
          Label("组件", systemImage: "lasso" )
          }
      
        UserContentView().tabItem{
          Label("user", systemImage: "person.fill" )
          }
        }
    }
}

#Preview {
    ContentView()
}
