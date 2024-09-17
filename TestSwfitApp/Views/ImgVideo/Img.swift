//
//  Img.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/17.
//

import SwiftUI

struct ImgViews: View {
    var body: some View {
        Image("background") // 图片名称替换为你的图片文件名
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 270, height: 210)
            .shadow(color: .gray, radius: 20, x: 0, y: 2)
    }
}

#Preview {
    ImgViews()
}
