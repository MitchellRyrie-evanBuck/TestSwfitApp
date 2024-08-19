//
//  Text.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/8/19.
//
import SwiftUI

let quote = """
**"Be yourself;** everyone else is _already taken._"
- **Oscar Wilde**
"""
let attributedQuote = try! AttributedString(markdown: quote)

struct ContentTextView: View {
  var body: some View {
    VStack {
        Text(attributedQuote)
          .font(.system(size: 16, weight: .medium, design: .serif))
          .foregroundColor(.blue).padding()
        
        Text("Welcome to my app!")
        .font(.largeTitle)
        .foregroundColor(.blue)
        .padding()
      
      Text("Explore the world")
        .font(.title)
        .fontWeight(.bold)
        .foregroundColor(.green)
        .padding()
      
      Text("Discover new places and experiences")
        .font(.headline)
        .padding()
      
      Text("Get inspired")
        .font(.subheadline)
        .foregroundColor(.purple)
        .padding()
      
      Text("Join our community")
        .font(.callout)
        .foregroundColor(.orange)
        .padding()
      
      Text("Share your adventures with us")
        .font(.footnote)
        .foregroundColor(.gray)
        .padding()
      
      Text("Follow us on social media")
        .font(.caption)
        .foregroundColor(.black)
        .padding()
    }
  }
}

#Preview {
    ContentTextView()
}
