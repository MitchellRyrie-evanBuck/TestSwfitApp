//
//  AlignmentGuides.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/18.
//

import SwiftUI

struct AlignmentGuides: View {
  var body: some View {
    HStack(alignment: .circleAlignment) {
      ForEach(0..<5) { index in
        Circle()
          .frame(width: 50, height: 50)
          .alignmentGuide(.circleAlignment) { _ in CGFloat(index * 20) }
      }
    }
    .frame(height: 200)
    .border(Color.black, width: 1)
  }
}

struct CircleAlignment: AlignmentID {
  static func defaultValue(in d: ViewDimensions) -> CGFloat {
    return d[VerticalAlignment.center]
  }
}

extension VerticalAlignment {
  static let circleAlignment = VerticalAlignment(CircleAlignment.self)
}

#Preview {
    AlignmentGuides()
}
