//
//  Filter.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/17.
//

import SwiftUI
import CoreImage
import CoreImage.CIFilterBuiltins

struct FilterView: View {
  let image: Image

  init() {
    let uiImage = UIImage(named: "background") ?? UIImage()
    let filteredUIImage = FilterView.applySepiaFilter(to: uiImage)
    image = Image(uiImage: filteredUIImage)
  }

  var body: some View {
    image
      .resizable()
      .scaledToFit()
  }

  static func applySepiaFilter(to inputImage: UIImage) -> UIImage {
    guard let ciImage = CIImage(image: inputImage) else { return inputImage }

    let filter = CIFilter.sepiaTone()
    filter.inputImage = ciImage
    filter.intensity = 1.0

    // Get a CIContext
    let context = CIContext()

    // Create a CGImage from the CIImage
    guard let outputCIImage = filter.outputImage,
          let cgImage = context.createCGImage(outputCIImage, from: outputCIImage.extent) else {
      return inputImage
    }

    // Create a UIImage from the CGImage
    let outputUIImage = UIImage(cgImage: cgImage)

    return outputUIImage
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    FilterView()
  }
}
