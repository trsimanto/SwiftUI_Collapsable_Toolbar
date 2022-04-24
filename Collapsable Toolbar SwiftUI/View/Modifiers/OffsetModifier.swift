//
//  OffsetModifier.swift
//  Collapsable Toolbar SwiftUI
//
//  Created by Towhid on 4/23/22.
//

import SwiftUI

//Setting Scrollview offset
struct OffsetModifier: ViewModifier { 
    @Binding var offset : CGFloat
    func body (content : Content ) -> some View {
        content.overlay(
            GeometryReader{
                proxy -> Color in
                
                //getting value for coordinate space called scroll
                let minY = proxy.frame(in: .named("SCROLL")).minY
                
                DispatchQueue.main.async {
                    self.offset = minY
                }
                
                return Color.clear
            }
        )
    }
}

