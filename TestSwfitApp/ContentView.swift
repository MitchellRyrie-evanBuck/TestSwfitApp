//
//  ContentView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/6/17.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    @Namespace var container
    var body: some View {
        Button("show"){
            show.toggle()
        }
        .buttonStyle(.bordered)
        .matchedTransitionSource(id: 1, in: container)
        .sheet(isPresented: $show ){
            Color.red
                .ignoresSafeArea()
                .overlay(Text("hallo My Free"))
                .navigationTransition(.zoom(sourceID: 1, in: container))
                
        }
        
    }
}

#Preview {
    ContentView()
}
